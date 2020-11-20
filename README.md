<h1 align="center">
<a href="https://www.speechly.com/?utm_source=github&utm_medium=ios-example&utm_campaign=header"><img src="https://www.speechly.com/images/logo.png" height="100" alt="Speechly"></a>
</h1>
<h2 align="center">
Complete your touch user interface with voice
</h2>

[Speechly website](https://www.speechly.com/?utm_source=github&utm_medium=ios-example&utm_campaign=header)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[Docs](https://www.speechly.com/docs/?utm_source=github&utm_medium=ios-example&utm_campaign=header)&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;[Blog](https://www.speechly.com/blog/?utm_source=github&utm_medium=ios-example&utm_campaign=header)

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
