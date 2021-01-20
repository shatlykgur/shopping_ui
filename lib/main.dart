import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "shopping",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: ,
    );
  }
}

class PrimaryPage extends StatefulWidget {
  //Dinamik widget oluşturduk, çünkü değişmesini istiyoruz.
  @override
  _PrimaryPageState createState() => _PrimaryPageState();
}

class _PrimaryPageState extends State<PrimaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0, //yükseklik ayarları 0 yaptık!
      ),
      
    );
  }
}