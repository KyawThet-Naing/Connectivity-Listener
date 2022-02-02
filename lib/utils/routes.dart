import 'package:connection_listener/components/connectivity_listener.dart';
import 'package:flutter/material.dart';
import '../pages/home.dart';
import '/pages/next.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.route:
        return pageRoute(page: const Home(), routeName: Home.route);

      case Next.route:
        return pageRoute(page: const Next(), routeName: Next.route);

      default:

        ///404 route
        return null;
    }
  }

  static pageRoute({required Widget page, required String routeName}) =>
      MaterialPageRoute(
        builder: (_) => ConnectivityListener(child: page),
        settings: RouteSettings(name: routeName),
      );
}
