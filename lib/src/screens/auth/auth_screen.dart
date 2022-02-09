import 'package:flutter/cupertino.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Авторизация'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            CupertinoTextField(
              placeholder: 'Логин или почта',
            ),
            CupertinoTextField(
              placeholder: 'Пароль',
            ),
            SizedBox(
              height: 32,
            ),
            CupertinoButton.filled(
              child: Text('Войти'),
              onPressed: null,
            ),
            SizedBox(
              height: 19,
            ),
            CupertinoButton.filled(
              child: Text('Зарегистрироваться'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
