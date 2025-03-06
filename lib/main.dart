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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: myHome());
  }
}

class myHome extends StatelessWidget {
  const myHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tourism Application',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
          
            color: Colors.green[800],
          
            margin: EdgeInsets.zero,
          
            padding: EdgeInsets.all(20),
          
            height: 300.0,
          
            width: 500.0,
          
            child: Image(image: AssetImage('images/Salalah2.jpg'))
          
            ),
            Image(image: AssetImage('images/Salalah3.jpg'))
        ],
      ),
       
    );
  }
}
