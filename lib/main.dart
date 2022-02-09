import 'package:flutter/material.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatelessWidget {
  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    var heart;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: (Colors.grey.shade900),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Who do you love?'),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'I',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.pink, fontSize: 70),
              ),
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 100.0,
              ),
              Text(
                'Mahabbat',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.pink, fontSize: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
