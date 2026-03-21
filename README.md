# Sample Bloc Pattern And Drift With Single State

[![Linktree](https://img.shields.io/badge/linktree-1de9b6?style=for-the-badge&logo=linktree&logoColor=white)](https://linktr.ee/nicos_nicolaou)
[![Static Badge](https://img.shields.io/badge/Site-blue?style=for-the-badge&label=Web)](https://nicosnicolaou16.github.io/)
[![X](https://img.shields.io/badge/X-%23000000.svg?style=for-the-badge&logo=X&logoColor=white)](https://twitter.com/nicolaou_nicos)
[![LinkedIn](https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/nicos-nicolaou-a16720aa)
[![Medium](https://img.shields.io/badge/Medium-12100E?style=for-the-badge&logo=medium&logoColor=white)](https://medium.com/@nicosnicolaou)
[![Mastodon](https://img.shields.io/badge/-MASTODON-%232B90D9?style=for-the-badge&logo=mastodon&logoColor=white)](https://androiddev.social/@nicolaou_nicos)
[![Bluesky](https://img.shields.io/badge/Bluesky-0285FF?style=for-the-badge&logo=Bluesky&logoColor=white)](https://bsky.app/profile/nicolaounicos.bsky.social)
[![Dev.to blog](https://img.shields.io/badge/dev.to-0A0A0A?style=for-the-badge&logo=dev.to&logoColor=white)](https://dev.to/nicosnicolaou16)
[![YouTube](https://img.shields.io/badge/YouTube-%23FF0000.svg?style=for-the-badge&logo=YouTube&logoColor=white)](https://www.youtube.com/@nicosnicolaou16)
[![Static Badge](https://img.shields.io/badge/Developer_Profile-blue?style=for-the-badge&label=Google)](https://g.dev/nicolaou_nicos)

An advanced boilerplate project demonstrating the **BLoC architecture** with a **Single State** approach, using **Dio** for networking and **Drift** for local persistence.

> [!IMPORTANT]  
> Looking for a similar project using standard Drift classes?  
> 👉 **[SampleBlocPatternWithSingleState](https://github.com/NicosNicolaou16/SampleBlocPatternWithSingleState)** 👈

## 🚀 Key Technologies & Libraries

*   **[Bloc Pattern (Single State)](https://pub.dev/packages/flutter_bloc):** Manages business logic and UI state through a streamlined single-state flow.
*   **[Drift Database](https://drift.simonbinder.eu/):** A reactive persistence library. This project implements the database using pure Dart classes (no `.drift` files).
*   **[Dio Network Manager](https://pub.dev/packages/dio):** Handles robust HTTP requests and remote data fetching.
*   **[Get It](https://pub.dev/packages/get_it):** Service locator for clean Dependency Injection.
*   **[Cached Network Image](https://pub.dev/packages/cached_network_image):** Efficient image loading with offline support.

## 🔧 Versioning

- **Flutter SDK:** **3.41.5**
- **Dart Version:** **3.11.3**

## 📚 References & Tutorials

### BLoC & Architecture
- [Official Flutter Infinite List Tutorial](https://bloclibrary.dev/#/flutterinfinitelisttutorial)
- [BLoC Getting Started Guide](https://bloclibrary.dev/#/gettingstarted)
- [Flutter Timer Tutorial](https://bloclibrary.dev/#/fluttertimertutorial?id=flutter-timer-tutorial)
- [BlocBuilder vs BlocConsumer vs BlocListener](https://ppantaleon.medium.com/flutter-blocbuilder-vs-blocconsumer-vs-bloclistener-a4a3ce7bfa9a)
- [Why use a Repository Layer?](https://stackoverflow.com/questions/59188021/why-usually-theres-a-repository-layer-on-bloc-pattern)

### Networking (Dio) & Persistence (Drift)
- [Drift: Advanced Dart Tables](https://drift.simonbinder.eu/docs/getting-started/advanced_dart_tables/)
- [Handling Dio Errors](https://pub.dev/packages/dio#handling-errors)
- [Stop Dio requests when offline](https://stackoverflow.com/questions/73811123/how-to-stop-dio-get-when-the-internet-is-off)

## 📡 API Endpoints (Data Source)

This project parses data from the **SpaceX API**:
- **GitHub:** [r-spacex/SpaceX-API](https://github.com/r-spacex/SpaceX-API)
- **Documentation:** [SpaceX Postman Docs](https://docs.spacexdata.com/?version=latest)

## ⭐ Stargazers

If you find this project useful for your Flutter development, please give it a star!  
[Check out the stargazers here](https://github.com/NicosNicolaou16/sampleblocpatternanddriftwithsinglestate/stargazers)

## 🙏 Support & Contributions

Feedback, bug reports, and feature requests are welcome! Feel free to **open an issue** or submit a **pull request**.





# Sample Bloc Pattern And Drift With Single State

[![Linktree](https://img.shields.io/badge/linktree-1de9b6?style=for-the-badge&logo=linktree&logoColor=white)](https://linktr.ee/nicos_nicolaou)
[![Static Badge](https://img.shields.io/badge/Site-blue?style=for-the-badge&label=Web)](https://nicosnicolaou16.github.io/)
[![X](https://img.shields.io/badge/X-%23000000.svg?style=for-the-badge&logo=X&logoColor=white)](https://twitter.com/nicolaou_nicos)
[![LinkedIn](https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/nicos-nicolaou-a16720aa)
[![Medium](https://img.shields.io/badge/Medium-12100E?style=for-the-badge&logo=medium&logoColor=white)](https://medium.com/@nicosnicolaou)
[![Mastodon](https://img.shields.io/badge/-MASTODON-%232B90D9?style=for-the-badge&logo=mastodon&logoColor=white)](https://androiddev.social/@nicolaou_nicos)
[![Bluesky](https://img.shields.io/badge/Bluesky-0285FF?style=for-the-badge&logo=Bluesky&logoColor=white)](https://bsky.app/profile/nicolaounicos.bsky.social)
[![Dev.to blog](https://img.shields.io/badge/dev.to-0A0A0A?style=for-the-badge&logo=dev.to&logoColor=white)](https://dev.to/nicosnicolaou16)
[![YouTube](https://img.shields.io/badge/YouTube-%23FF0000.svg?style=for-the-badge&logo=YouTube&logoColor=white)](https://www.youtube.com/@nicosnicolaou16)
[![Static Badge](https://img.shields.io/badge/Developer_Profile-blue?style=for-the-badge&label=Google)](https://g.dev/nicolaou_nicos)

This project is an application that uses the BLoC architecture pattern with a single state, Dio as
the network manager, and Drift as the database solution. The database is implemented using Drift
classes, without the need for a Drift file.

> [!IMPORTANT]  
> Similar project with (Drift Class) :point_right: [SampleBlocPatternWithSingleState](https://github.com/NicosNicolaou16/SampleBlocPatternWithSingleState) :point_left: <br />

# The Project Contain the following technologies and libraries

[Bloc Patterns using single state](https://pub.dev/packages/flutter_bloc) along with repositories
and services, separates business logic, data access, and UI by using streams to handle state and
manage data flow. ([Bloc Pattern Documentation](https://bloclibrary.dev/getting-started/)) <br />
[Dio Network Manager](https://pub.dev/packages/dio) is responsible for making requests and
retrieving data from the remote server. <br />
[Cached Network Image](https://pub.dev/packages/cached_network_image) is a package that it is
responsible for loading the images and supports offline functionality.  <br />
[Drift Database](https://drift.simonbinder.eu/docs/getting-started/) is responsible for saving the
retrieved data from the remote server, querying data from the local database, and supporting offline
functionality. ([Drift Database Documentation](https://pub.dev/packages/drift)) <br />
[Get It (Dependencies Injection)](https://pub.dev/packages/get_it) is a lightweight dependency
injection package for Flutter that allows you to register and access services globally, promoting
cleaner and more maintainable code.  <br />

# Versioning

Flutter SDK version: 3.41.5 <br />
Dart Version: 3.11.3 <br />

# References/Tutorials Follow

https://bloclibrary.dev/#/flutterinfinitelisttutorial <br />
https://bloclibrary.dev/#/gettingstarted <br />
https://bloclibrary.dev/#/fluttertimertutorial?id=flutter-timer-tutorial <br />
https://ppantaleon.medium.com/flutter-blocbuilder-vs-blocconsumer-vs-bloclistener-a4a3ce7bfa9a <br />
https://stackoverflow.com/questions/59188021/why-usually-theres-a-repository-layer-on-bloc-pattern <br />
https://drift.simonbinder.eu/docs/getting-started/advanced_dart_tables/ <br />
https://stackoverflow.com/questions/73811123/how-to-stop-dio-get-when-the-internet-is-off <br />
https://stackoverflow.com/questions/61381265/stop-showing-error-from-http-or-dio-request <br />
https://pub.dev/packages/dio#handling-errors <br />
https://pub.dev/packages/get_it <br />

# Feeds/Urls/End Point (parsing some data from response)

## (Links References for Ends Points)

https://github.com/r-spacex/SpaceX-API (GitHub) <br />
https://docs.spacexdata.com/?version=latest (Postman) <br />
