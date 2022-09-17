import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  var num1 = 1;

  var num2 = 1;

  void play() {
    setState(() {
      num1 = Random().nextInt(3) + 1;
      num2 = Random().nextInt(3) + 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            'ROCK PAPPER SICSSORS',
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                play();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/i_1.png',
                        height: 100,
                        width: 60,
                      )),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/i_2,png',
                        height: 100,
                        width: 60,
                      )),
                ],
              ),
            ),
            Container(
              height: 100,
            ),
            Container(
              width: 100,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                onPressed: () {
                  play();
                },
                child: Text('play'),
              ),
            )
          ],
        )),
      ),
    );
  }
}
