import 'package:flutter/cupertino.dart';
import 'package:hello_flutter/src/common/constants/color_constants.dart';
import 'package:hello_flutter/src/common/widgets/custom_button.dart';
import 'package:hello_flutter/src/common/widgets/custom_text_field.dart';

class RegScreen extends StatelessWidget {
  const RegScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.scaffoldBackground,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: AppColors.white,
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
            const CustomTextField(
              placeholder: 'Логин',
            ),
            const SizedBox(height: 1),
            const CustomTextField(
              placeholder: 'Телефон',
            ),
            const SizedBox(height: 1),
            const CustomTextField(
              placeholder: 'Почта',
            ),
            const SizedBox(height: 1),
            const CustomTextField(
              placeholder: 'Пароль',
            ),
            const SizedBox(height: 327),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(title: 'Создать аккаунт', onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
