import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:infinite_weather/config/di/injection.dart';
import 'package:infinite_weather/config/routes.dart';
import 'package:infinite_weather/config/style/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
  ]);
  runApp(const InfiniteWeatherApp());
}

class InfiniteWeatherApp extends StatelessWidget {
  const InfiniteWeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Infinite Weather',
      theme: InfiniteWeatherLightTheme().getTheme(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
