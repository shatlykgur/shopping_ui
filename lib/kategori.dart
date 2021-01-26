import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key key, this.kategori}) : super(key: key);

  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Widget> gosterilecekListe;

  @override
  void initState() {
    super.initState();

    if (widget.kategori == "temel gıda") {
      gosterilecekListe = [
        urunKarti(),
        Container(color: Colors.blue),
        Container(color: Colors.green),
        Container(color: Colors.teal),
      ];
    } else if (widget.kategori == "şekerleme") {
      gosterilecekListe = [
        Container(color: Colors.red),
        Container(color: Colors.blue),
      ];
    } else if (widget.kategori == "içecekler") {
      gosterilecekListe = [
        Container(color: Colors.teal),
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.green),
      ];
    } else if (widget.kategori == "temizlik") {
      gosterilecekListe = [
        Container(color: Colors.blue),
        Container(color: Colors.green),
        Container(color: Colors.teal),
      ];
    }
  }

  Widget urunKarti() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4.0,
              spreadRadius: 2.0,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120.0,
            height: 80.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/06/26/15/31/oil-822618_960_720.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12.0,
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 1,
      children: gosterilecekListe,
    );
  }
}
