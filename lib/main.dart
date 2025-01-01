import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Magic8BallApp());
}

class Magic8BallApp extends StatelessWidget {
  const Magic8BallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Magic8Ball(),
    );
  }
}

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({super.key});

  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  final List<String> responses = [
    "Yes, definitely.",
    "Ask again later.",
    "It is certain.",
    "Don't count on it.",
    "My sources say no.",
    "Outlook good.",
    "Very doubtful.",
    "Without a doubt.",
    "Better not tell you now.",
    "Yes.",
    "No.",
    "Signs point to yes.",
    "Concentrate and ask again.",
    "Reply hazy, try again."
  ];

  String currentResponse = "Ask a question!";

  void getRandomResponse() {
    final random = Random();
    setState(() {
      currentResponse = responses[random.nextInt(responses.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magic 8 Ball"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              currentResponse,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50.0),
            ElevatedButton(
              onPressed: getRandomResponse,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
              ),
              child: Text(
                "Ask the Magic 8 Ball",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
