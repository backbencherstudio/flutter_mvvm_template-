import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm_template/core/constant/route_names.dart';

import '../../features/splash/splash_screen.dart';

class AppRoutes {
  static const String initialRoute = RouteNames.splashScreen;

  static final Map<String, WidgetBuilder> routes = {
    RouteNames.splashScreen: (context) => const SplashScreen(),
    RouteNames.home: (context) => const HomeScreen(),

  };
}