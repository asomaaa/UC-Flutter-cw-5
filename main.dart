import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int number1 = 1;
  int number2 = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange[200],
        appBar: AppBar(
          title: Center(child: Text("Rock Paper Scissors")),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("player1"),
                  Text("player2"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "images/i_$number1.png",
                    width: 150,
                  ),
                  Image.asset(
                    "images/i_$number2.png",
                    width: 150,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 30,
                      )),
                  onPressed: () {
                    setState(() {
                      number1 = Random().nextInt(3) + 1;
                      number2 = Random().nextInt(3) + 1;
                    });
                  },
                  child: Text(
                    "Play",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )),
              SizedBox(
                height: 50,
              ),
              Text(number1 == number2 ? "try again" : "the winner")
            ],
          ),
        ),
      ),
    );
  }
}
