import 'package:flutter/cupertino.dart';
import 'package:hello_flutter/src/common/widgets/custom_listview.dart';
import 'package:hello_flutter/src/common/widgets/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: CupertinoTextField(
                placeholder: 'Search',
                padding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
                decoration: const BoxDecoration(color: CupertinoColors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(),
              child: CustomListView(),
            ),
          ],
        ),
      ),
    );
  }
}
