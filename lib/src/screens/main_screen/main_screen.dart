import 'package:flutter/cupertino.dart';
import 'package:hello_flutter/src/screens/auth/auth_screen.dart';
import 'package:hello_flutter/src/screens/home_screen/home_screen.dart';
import 'package:hello_flutter/src/screens/reg/reg_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.gift)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person)),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return const HomeScreen();
              case 1:
                return const RegScreen();
              case 2:
                return const AuthScreen();
              case 3:
                return const RegScreen();
              default:
                return const RegScreen();
            }
          },
        );
      },
    );
  }
}
