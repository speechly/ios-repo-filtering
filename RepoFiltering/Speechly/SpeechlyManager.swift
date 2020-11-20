import Foundation
import SwiftUI
import Speechly

class SpeechlyManager: ObservableObject {
    let client: SpeechClient
    var active: Bool

    @Published var transcript: [SpeechTranscript] = []
    @Published var filter: GithubRepoFilter = GithubRepoFilter.empty

    init() {
        self.active = true
        self.client = try! SpeechClient(
            appId: UUID(uuidString: "your-speechly-app-id")!,
            language: .enUS
        )

        self.client.delegate = self
    }

    func start() {
        if !self.active {
            return
        }

        self.client.start()
    }

    func stop() {
        if !self.active {
            return
        }

        self.client.stop()
    }

    func suspend() {
        if self.active {
            self.client.suspend()
            self.active = false
        }
    }

    func resume() {
        if !self.active {
            try! self.client.resume()
            self.active = true
        }
    }
}

extension SpeechlyManager: SpeechClientDelegate {
    func speechlyClientDidStart(_: SpeechClientProtocol) {
        DispatchQueue.main.async {
            self.transcript = []
        }
    }

    func speechlyClientDidStop(_: SpeechClientProtocol) {
        DispatchQueue.main.async {
            self.transcript = []
        }
    }

    func speechlyClientDidUpdateSegment(_ client: SpeechClientProtocol, segment: SpeechSegment) {
        DispatchQueue.main.async {
            switch segment.intent.value.lowercased() {
            case "filter":
                self.filter = GithubRepoFilter(
                    languageFilter: self.parseLanguageFilter(segment),
                    sortOrder: self.filter.sortOrder
                )
            case "sort":
                self.filter = GithubRepoFilter(
                    languageFilter: self.filter.languageFilter,
                    sortOrder: self.parseSortOrder(segment)
                )
            case "reset":
                self.filter = GithubRepoFilter.empty
            default:
                break
            }

            self.transcript = segment.transcripts
        }
    }

    private func parseSortOrder(
        _ segment: SpeechSegment, defaultOrder: GithubRepoFilter.SortOrder = GithubRepoFilter.empty.sortOrder
    ) -> GithubRepoFilter.SortOrder {
        var order = defaultOrder

        for e in segment.entities {
            if e.type.lowercased() != "sort_field" {
                continue
            }

            switch e.value.lowercased() {
            case "name":
                order = .name
            case "language":
                order = .language
            case "followers":
                order = .followers
            case "stars":
                order = .stars
            case "forks":
                order = .forks
            default:
                continue
            }
        }

        return order
    }

    private func parseLanguageFilter(_ segment: SpeechSegment, initialValue: [GithubRepo.Language] = []) -> [GithubRepo.Language] {
        var languages = initialValue

        for e in segment.entities {
            if e.type.lowercased() != "language" {
                continue
            }

            switch e.value.lowercased() {
            case "go":
                languages.append(.Go)
            case "python":
                languages.append(.Python)
            case "typescript":
                languages.append(.TypeScript)
            default:
                continue
            }
        }

        return languages
    }
}
