import 'package:flutter/cupertino.dart';
import 'package:hello_flutter/src/common/constants/color_constants.dart';
import 'package:hello_flutter/src/common/widgets/custom_button.dart';
import 'package:hello_flutter/src/common/widgets/custom_text_field.dart';
import 'package:hello_flutter/src/router/routing_const.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.scaffoldBackground,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: AppColors.white,
        border: Border(),
        middle: Text('Авторизация'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomTextField(
              placeholder: 'Логин и Почта',
            ),
            Container(
              height: 1,
              color: AppColors.scaffoldBackground,
              margin: const EdgeInsets.symmetric(horizontal: 16),
            ),
            const CustomTextField(
              placeholder: 'Пароль',
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                title: 'Войти',
                onPressed: () {
                  Navigator.pushNamed(context, HomeRoute);
                },
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                title: 'Зарегистрироваться',
                onPressed: () {
                  Navigator.pushNamed(context, RegisterRoute);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
