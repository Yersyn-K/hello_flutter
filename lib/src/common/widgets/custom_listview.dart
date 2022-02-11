import 'package:flutter/cupertino.dart';
import 'package:hello_flutter/src/screens/home_screen/home_screen.dart';

class CustomListView extends StatelessWidget {
  List restraunts = [
    'assets/images/dostyq.png',
    'assets/images/essentai.png',
    'assets/images/mega.png',
    'assets/images/dostyq1.png',
    'assets/images/essentai1.png',
    'assets/images/mega1.png'
  ];

  List restrauntNames = [
    'Dostyq Plaza',
    'Essentai Mall',
    'Mega Almaty',
    'Dostyq Plaza',
    'Essentai Mall',
    'Mega Almaty',
  ];

  List restrauntDescription = [
    'Dostyq Plaza',
    'Essentai Mall',
    'Mega Almaty',
    'Dostyq Plaza',
    'Essentai Mall',
    'Mega Almaty',
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext ctx, int index) {
          return Column(
            children: [
              Image.asset(restraunts[index], fit: BoxFit.cover),
              Text(
                restrauntNames[index],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                textAlign: TextAlign.left,
              ),
              Text(restrauntDescription[index]),
              SizedBox(height: 16)
            ],
          );
        },
        itemCount: restraunts.length,
      ),
    );
  }
}
