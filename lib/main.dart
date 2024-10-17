import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  // Ensure MaterialApp or WidgetsApp is used
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Icon(Icons.android, size: 100,),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.all(Radius.circular(50)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                offset: Offset(4.0,4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0,-4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0
              )
            ]
          ),
        ),
      ),
    );
  }
}

