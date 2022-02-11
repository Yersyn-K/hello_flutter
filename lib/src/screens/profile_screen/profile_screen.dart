import 'package:flutter/cupertino.dart';
import 'package:hello_flutter/src/common/constants/color_constants.dart';
import 'package:hello_flutter/src/common/widgets/custom_button.dart';
import 'package:hello_flutter/src/router/routing_const.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.scaffoldBackground,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: AppColors.white,
        middle: Text('Профиль'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 38),
            const Icon(
              CupertinoIcons.person_alt_circle,
              size: 100,
            ),
            const Text(
              'Yersyn Kylyshbek',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: 'Manrope'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Text(
              'yersyn.k@gmail',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  fontFamily: 'Manrope'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 27),
            CustomButton(
                title: 'Выйти',
                onPressed: () {
                  Navigator.pushNamed(context, AuthRoute);
                }),
          ],
        ),
      ),
    );
  }
}
