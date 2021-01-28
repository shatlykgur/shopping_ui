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
        urunKarti(
          "Zeytin yağı",
          "30 TL",
          "https://cdn.pixabay.com/photo/2015/06/26/15/31/oil-822618_960_720.jpg",
        ),
        urunKarti(
          "Süt",
          "5 TL",
          "https://images.pexels.com/photos/2638026/pexels-photo-2638026.jpeg",
        ),
        urunKarti(
          "Yumurta",
          "25 TL",
          "https://images.pexels.com/photos/162712/egg-white-food-protein-162712.jpeg",
        ),
        urunKarti(
          "Çay",
          "10 TL",
          "https://images.pexels.com/photos/1417945/pexels-photo-1417945.jpeg",
        ),
        urunKarti(
          "Mayonez",
          "7 TL",
          "https://images.pexels.com/photos/2365338/pexels-photo-2365338.jpeg",
        ),
      ];
    } else if (widget.kategori == "şekerleme") {
      gosterilecekListe = [
        urunKarti(
          "Çikolata",
          "8 TL",
          "https://images.pexels.com/photos/1775285/pexels-photo-1775285.jpeg",
        ),
        urunKarti(
          "Pasta",
          "23 TL",
          "https://images.pexels.com/photos/264892/pexels-photo-264892.jpeg",
        ),
      ];
    } else if (widget.kategori == "içecekler") {
      gosterilecekListe = [
        urunKarti(
          "Kola",
          "7 TL",
          "https://images.pexels.com/photos/2983100/pexels-photo-2983100.jpeg",
        ),
        urunKarti(
          "Maden Suyu",
          "3 TL",
          "https://images.pexels.com/photos/357577/pexels-photo-357577.jpeg",
        ),
        urunKarti(
          "Meyve Suyu",
          "5 TL",
          "https://images.pexels.com/photos/96974/pexels-photo-96974.jpeg",
        ),
      ];
    } else if (widget.kategori == "temizlik") {
      gosterilecekListe = [
        urunKarti(
          "Sıvı Sabun",
          "20 TL",
          "https://images.pexels.com/photos/3987142/pexels-photo-3987142.jpeg",
        ),
        urunKarti(
          "Sünger",
          "5 TL",
          "https://images.pexels.com/photos/4239099/pexels-photo-4239099.jpeg",
        ),
      ];
    }
  }

  Widget urunKarti(String isim, String fiyat, String resimYolu) {
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
                  resimYolu,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            isim,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            fiyat,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Colors.red[400],
            ),
          ),
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
