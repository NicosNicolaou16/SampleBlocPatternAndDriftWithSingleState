# Sample Bloc Pattern And Drift With Single State

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

Flutter SDK version: 3.32.2 <br />
Dart Version: 3.8.1 <br />

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
