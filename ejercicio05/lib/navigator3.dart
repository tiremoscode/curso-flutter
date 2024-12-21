import 'package:flutter/material.dart';

class AppPage {
  final String name;
  final Widget page;

  AppPage({required this.name, required this.page});
}

class AppState extends ChangeNotifier {
  String _selectedPage = '/home';

  String get selectedPage => _selectedPage;

  void setNewRoutePath(String newPath) {
    _selectedPage = newPath;
    notifyListeners();
  }
}

// implementar el RouterDelegate.
class AppRouterDelegate extends RouterDelegate<String>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<String> {
  final AppState appState;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  AppRouterDelegate(this.appState) {
    appState.addListener(notifyListeners);
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(
            key: ValueKey('/home'),
            child: HomeScreen(onNavigate: () {
              appState.setNewRoutePath('/details');
            })),
        if (appState.selectedPage == '/details')
          MaterialPage(
              key: ValueKey('/details'),
              child: DetailsScreen(onBack: () {
                appState.setNewRoutePath('/home');
              }))
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        appState.setNewRoutePath('/home');
        return true;
      },
    );
  }

  @override
  String? get currentConfiguration => appState.selectedPage;

  @override
  Future<void> setNewRoutePath(String configuration) async {
    appState.setNewRoutePath(configuration);
  }
}

class AppRouteInformationParser extends RouteInformationParser<String> {
  @override
  Future<String> parseRouteInformation(
      RouteInformation routeInformation) async {
    return routeInformation.location ?? '/home';
  }

  @override
  RouteInformation? restoreRouteInformation(String configuration) {
    return RouteInformation(location: configuration);
  }
}

class HomeScreen extends StatelessWidget {
  final VoidCallback onNavigate;

  const HomeScreen({Key? key, required this.onNavigate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Center(
            child: ElevatedButton(
                child: Text('Ir a detalles'), onPressed: onNavigate)));
  }
}

class DetailsScreen extends StatelessWidget {
  final VoidCallback onBack;

  const DetailsScreen({Key? key, required this.onBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Center(
            child:
                ElevatedButton(child: Text('Ir a Home'), onPressed: onBack)));
  }
}

/* Ejecutar nuestra aplicacion */

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appState = AppState();
    return MaterialApp.router(
      routerDelegate: AppRouterDelegate(appState),
      routeInformationParser: AppRouteInformationParser(),
    );
  }
}
