import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    'DOSTYK PLAZA – масштабный, современный торгово-развлекательный центр, расположенный в центре Алматы. DOSTYK PLAZA – масштабный, современный торгово-развлекательный центр, расположенный в центре Алматы.',
    'Esentai Mall – единственный люксовый молл в Центральной Азии с эксклюзивным ассортиментом брендов и товаров.',
    'MEGA Alma-Ata (Ме́га Алма́-Ата́) — крупный торгово развлекательный центр в городе Алма-Ата (Казахстан).',
    'DOSTYK PLAZA – масштабный, современный торгово-развлекательный центр, расположенный в центре Алматы.',
    'Esentai Mall – единственный люксовый молл в Центральной Азии с эксклюзивным ассортиментом брендов и товаров.',
    'MEGA Alma-Ata (Ме́га Алма́-Ата́) — крупный торгово развлекательный центр в городе Алма-Ата (Казахстан).',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (BuildContext ctx, int index) {
        return Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              // height: 234,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(restraunts[index], fit: BoxFit.cover),
                  Row(
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, top: 4, right: 8),
                              child: Text(
                                restrauntNames[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16,
                                    fontFamily: 'Manrope'),
                                // textAlign: TextAlign.left,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, bottom: 8, right: 63),
                              child: Text(
                                restrauntDescription[index],
                                textWidthBasis: TextWidthBasis.values.first,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontFamily: 'Manrope'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CupertinoButton(
                          child: const Icon(
                            CupertinoIcons.heart,
                            color: Colors.red,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16)
          ],
        );
      },
      itemCount: restraunts.length,
    );
  }
}
