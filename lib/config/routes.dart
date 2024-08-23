import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_weather/core/widgets/nav_bar_container.dart';
import 'package:infinite_weather/core/widgets/session_wrapper.dart';

class Routes {
  static const summary = 'summary';
  static const locations = 'locations';
  static const locationDetails = 'location-details';
}

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _mainNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'main');
final _locationsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'locations');
final _summaryNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'summary');

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: routes,
);

final routes = <RouteBase>[
  ShellRoute(
    navigatorKey: _mainNavigatorKey,
    builder: (context, state, child) => SessionWrapper(child: child),
    routes: [
      StatefulShellRoute(
        parentNavigatorKey: _mainNavigatorKey,
        branches: [
          StatefulShellBranch(
            navigatorKey: _locationsNavigatorKey,
            routes: [],
          ),
          StatefulShellBranch(
            navigatorKey: _summaryNavigatorKey,
            routes: [],
          ),
        ],
        navigatorContainerBuilder: (context, navigationShell, children) {
          return NavBarContainer(navigationShell: navigationShell, children: children);
        },
      ),
      GoRoute(
        parentNavigatorKey: _mainNavigatorKey,
        path: '/location-details',
        name: Routes.locationDetails,
        pageBuilder: (context, state) {
          //state.syncAppBar(context);
          return NoTransitionPage(child: Container());
        },
      ),
    ],
  ),
];
