import 'package:base_setup/main/navigation/route_paths.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/userPage/presentation/page/user_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.userPage:
        return CupertinoPageRoute(
          builder: (context) => const UserPage(),
          settings: const RouteSettings(name: RoutePaths.userPage),
        );

      default:
        return CupertinoPageRoute(
          builder: (context) => Container(),
        );
    }
  }
}
