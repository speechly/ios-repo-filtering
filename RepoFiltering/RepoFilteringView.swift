import SwiftUI
import Speechly

struct RepoFilteringView: View {
    let repos: [GithubRepo]
    let transcript: [SpeechTranscript]
    let startRecording: () -> Void
    let stopRecording: () -> Void

    var body: some View {
        VStack {
            TranscriptText(words: transcript)
            RepoList(repos: repos)
            MicrophoneButton(onStart: startRecording, onStop: stopRecording)
                .padding(.bottom, 15)
        }
    }
}

struct RepoFilteringView_Previews: PreviewProvider {
    static var previews: some View {
        RepoFilteringView(
            repos: GithubRepoRepository.shared.list(),
            transcript: [
                SpeechTranscript(
                    index: 1,
                    value: "SHOW",
                    startOffset: TimeInterval(0),
                    endOffset: TimeInterval(0.1),
                    isFinal: true
                ),
                SpeechTranscript(
                    index: 2,
                    value: "ME",
                    startOffset: TimeInterval(0),
                    endOffset: TimeInterval(0.1),
                    isFinal: true
                ),
                SpeechTranscript(
                    index: 3,
                    value: "ALL",
                    startOffset: TimeInterval(0),
                    endOffset: TimeInterval(0.1),
                    isFinal: true
                ),
                SpeechTranscript(
                    index: 4,
                    value: "GO",
                    startOffset: TimeInterval(0),
                    endOffset: TimeInterval(0.1),
                    isFinal: false
                ),
                SpeechTranscript(
                    index: 5,
                    value: "REPOS",
                    startOffset: TimeInterval(0),
                    endOffset: TimeInterval(0.1),
                    isFinal: false
                )
            ],
            startRecording: {},
            stopRecording: {}
        )
    }
}
