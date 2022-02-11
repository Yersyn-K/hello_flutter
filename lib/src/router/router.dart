import 'package:flutter/cupertino.dart';
import 'package:hello_flutter/src/router/routing_const.dart';
import 'package:hello_flutter/src/screens/auth/auth_screen.dart';
import 'package:hello_flutter/src/screens/home_screen/home_screen.dart';
import 'package:hello_flutter/src/screens/main_screen/main_screen.dart';
import 'package:hello_flutter/src/screens/reg/reg_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AuthRoute:
        return CupertinoPageRoute(
          builder: (context) => const AuthScreen(),
        );
      case RegisterRoute:
        return CupertinoPageRoute(
          builder: (context) => const RegScreen(),
        );
      case MainRoute:
        return CupertinoPageRoute(
          builder: (context) => const MainScreen(),
        );
      case HomeRoute:
        return CupertinoPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        return CupertinoPageRoute(
          builder: (context) => const AuthScreen(),
        );
    }
  }
}
