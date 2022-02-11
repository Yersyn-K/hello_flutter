import 'package:flutter/cupertino.dart';
import 'package:hello_flutter/src/common/constants/color_constants.dart';
import 'package:hello_flutter/src/common/widgets/custom_listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return CupertinoPageScaffold(
      backgroundColor: AppColors.scaffoldBackground,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              CupertinoTextField(
                prefix: const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(CupertinoIcons.search),
                ),
                placeholder: 'Search',
                padding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
                decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    borderRadius: BorderRadius.circular(6)),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: CustomListView(),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
