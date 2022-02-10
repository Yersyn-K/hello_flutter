import 'package:flutter/cupertino.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.placeholder = '',
  }) : super(key: key);

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      placeholder: placeholder,
      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
      decoration: const BoxDecoration(color: CupertinoColors.white),
    );
  }
}
