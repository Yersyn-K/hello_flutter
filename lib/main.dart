import 'package:flutter/cupertino.dart';
import 'package:hello_flutter/src/router/router.dart';
import 'package:hello_flutter/src/router/routing_const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AuthRoute,
    );
  }
}
