import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "shopping",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _aktifIcerikNo = 0;
  List<Widget> _icerikler;

  @override
  void initState() {
    super.initState();

    _icerikler = [
      Text("İçerik 1"),
      Text("İçerik 2"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Gönder gelsin",
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ),
      body: _icerikler[_aktifIcerikNo],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktifIcerikNo,
        selectedItemColor: Colors.green[400],
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ("Ürünler")),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ("Sepetim")),
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
             _aktifIcerikNo = tiklananButonPozisyonNo;   
          });
        },
      ),
    );
  }
}
