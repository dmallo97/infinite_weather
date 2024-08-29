import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_weather/core/widgets/nav_bar_container.dart';
import 'package:infinite_weather/core/widgets/session_wrapper.dart';
import 'package:infinite_weather/features/location/domain/model/location_metadata_model.dart';
import 'package:infinite_weather/features/location/presentation/location_details.dart';
import 'package:infinite_weather/features/location/presentation/locations_list.dart';
import 'package:infinite_weather/features/summary/presentation/summary_page.dart';

class Routes {
  static const summary = 'summary';
  static const locations = 'locations';
  static const locationDetails = 'location-details';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _mainNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'main');
final _locationsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'locations');
final _summaryNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'summary');

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/summary',
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
            navigatorKey: _summaryNavigatorKey,
            initialLocation: '/summary',
            routes: [
              GoRoute(
                path: '/summary',
                name: Routes.summary,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: SummaryPage());
                },
              )
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _locationsNavigatorKey,
            initialLocation: '/locations',
            routes: [
              GoRoute(
                path: '/locations',
                name: Routes.locations,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: LocationsList());
                },
              ),
              GoRoute(
                path: '/location-details',
                name: Routes.locationDetails,
                pageBuilder: (context, state) {
                  final locationData = state.extra as LocationMetadataModel;
                  return NoTransitionPage(child: LocationDetails(locationData: locationData));
                },
              ),
            ],
          ),
        ],
        navigatorContainerBuilder: (context, navigationShell, children) =>
            NavBarContainer(navigationShell: navigationShell, children: children),
        builder: (context, state, navigationShell) => navigationShell,
      ),
      // GoRoute(
      //   parentNavigatorKey: _mainNavigatorKey,
      //   path: '/location-details',
      //   name: Routes.locationDetails,
      //   pageBuilder: (context, state) {
      //     //state.syncAppBar(context);
      //     return NoTransitionPage(child: Container());
      //   },
      // ),
    ],
  ),
];
