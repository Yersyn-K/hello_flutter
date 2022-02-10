import 'package:flutter/cupertino.dart';

class RegScreen extends StatelessWidget {
  const RegScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: Border(),
        middle: Text('Регистарция'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 32,
            ),
            const CupertinoTextField(
              placeholder: 'Логин',
              padding: EdgeInsets.symmetric(vertical: 19, horizontal: 16),
              decoration: BoxDecoration(color: CupertinoColors.white),
            ),
            const SizedBox(height: 1),
            const CupertinoTextField(
              placeholder: 'Телефон',
              padding: EdgeInsets.symmetric(vertical: 19, horizontal: 16),
              decoration: BoxDecoration(color: CupertinoColors.white),
            ),
            const SizedBox(height: 1),
            const CupertinoTextField(
              placeholder: 'Почта',
              padding: EdgeInsets.symmetric(vertical: 19, horizontal: 16),
              decoration: BoxDecoration(color: CupertinoColors.white),
            ),
            const SizedBox(height: 1),
            const CupertinoTextField(
              placeholder: 'Пароль',
              padding: EdgeInsets.symmetric(vertical: 19, horizontal: 16),
              decoration: BoxDecoration(color: CupertinoColors.white),
            ),
            const SizedBox(height: 327),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  color: const Color(0xFF4631D2),
                  child: const Text(
                    'Создать аккаунт',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
