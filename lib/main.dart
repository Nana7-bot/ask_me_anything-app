import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BallApp(),
    );
  }
}

class BallApp extends StatefulWidget {
  const BallApp({Key? key}) : super(key: key);

  @override
  _BallAppState createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {

  int number = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Ask me anything'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Image.asset('images/ball$number.png'),
            onTap: () {
              setState(() {
                number = Random().nextInt(5) + 1;
              });
            },
          ),
          const SizedBox(height: 30),

          const Text('Developed by Mighty Makers')




        ],
      ),
    );
  }
}



