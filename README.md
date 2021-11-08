<div align="center" markdown="1">
<a href="https://www.speechly.com/?utm_source=github&utm_medium=browser-client&utm_campaign=header">
   <img src="https://d33wubrfki0l68.cloudfront.net/1e70457a60b0627de6ab966f1e0a40cf56f465f5/b4144/img/logo-speechly-colors.svg" height="48">
</a>

### Speechly is the Fast, Accurate, and Simple Voice Interface API for Web, Mobile and E‑commerce

[Website](https://www.speechly.com/?utm_source=github&utm_medium=browser-client&utm_campaign=header)
&ensp;|&ensp;
[Docs](https://docs.speechly.com/)
&ensp;|&ensp;
[Discussions](https://github.com/speechly/speechly/discussions)
&ensp;|&ensp;
[Blog](https://www.speechly.com/blog/?utm_source=github&utm_medium=browser-client&utm_campaign=header)
&ensp;|&ensp;
[Podcast](https://anchor.fm/the-speechly-podcast)

---
</div>

# Speechly iOS example

This repository contains an example app for filtering data using [Speechly](https://www.speechly.com/?utm_source=github&utm_medium=ios-example&utm_campaign=text) iOS client.

Built with:

- [Swift](https://swift.org)
- [SwiftUI](https://developer.apple.com/documentation/swiftui/)
- [Speechly iOS client](https://github.com/speechly/ios-client)

## Running locally

You will need Xcode (this project was built with Xcode 12) and device simulators. This app requires iOS version at least 14.0.

Before running the app make sure to create and deploy your own Speechly application, following [our quick start tutorial](https://docs.speechly.com/quick-start/).

You should use the configuration from [speechly_app_configuration.sal](speechly_app_configuration.sal).

After you've deployed your Speechly app, update the `appId` in [SpeechlyManager.swift](RepoFiltering/Speechly/SpeechlyManager.swift).

Finally you are ready to run the app, you can try out the following phrases:

- Show me all Python repos
- Sort by followers
- Clear the filters

## About Speechly

Speechly is a developer tool for building real-time multimodal voice user interfaces. It enables developers and designers to enhance their current touch user interface with voice functionalities for better user experience. Speechly key features:

#### Speechly key features

- Fully streaming API
- Multi modal from the ground up
- Easy to configure for any use case
- Fast to integrate to any touch screen application
- Supports natural corrections such as "Show me red – i mean blue t-shirts"
- Real time visual feedback encourages users to go on with their voice
