import 'package:flutter/material.dart';
//otomatik material.dart sınıfını import etti, bu android için olan sınıf
// kodları düzenlemek: sağ tık - Format Document

void main() => runApp(MyApp());
//=> yerine {} parantezide kullanabiliriz.
//MyApp sınıfını - main metotu içinde çağırdık, şimdi ilk çalışacak olan sınıf MyApp sınıfı.
//Program her zaman üstten alta doğru çalışıyor.

class MyApp extends StatelessWidget {
  //extends: kalıtım almak, MyApp sınıfı StatelessWidget özelliklerini alacak.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //MaterialApp widgeti döndürecek.
      //MaterialApp standart tasarım düzenini takip eden widget.
      debugShowCheckedModeBanner: false,
      //eğerde bu "true" ise emülatör sağ köşesinde debug diye yazacak, "false" ise yazmıycak.
      title: "shopping",
      //uygulamayı "pause" yaptığımız zaman title'de gösterilecek olan yazı.
      theme: ThemeData(
        //bir tema belirlemek istediğimizi söyledik.
        primarySwatch: Colors.orange,
        //primarySwatch renklerin en güzel tonunu seçerek bize gösteriyor.
      ),
      home: AnaSayfa(), //AnaSayfayı programın açılış sayfası yaptık.
      //buraya çağırdığımız sınıf programın açılış sayfası olacak.
      //başka sınıfları MyApp sınıfında çağırmak istersek, "home" içine yazıyoruz.
    );
  }
}

class AnaSayfa extends StatefulWidget {
  //Anasayfa isimli sınıfımızı dinamik widget'e bağladık.
  //stf + tab
  //StatefulWidget oluşturduk çünkü dinamik yani değişebilen widget istiyoruz.
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

//StatefulWidget her zaman iki parçadan oluşur, 1. widget, 2. state (yardımcısı demek).
class _AnaSayfaState extends State<AnaSayfa> {
  List<Widget> _icerikler;
  //iceriklerin üstüne geldiğimizde, açıklama kısmında bunu bize kullanmaya zorladığını görürüz.
  //<Widget> yazmak eskiden zorunluydu ama artık değil, o yüzden yazmaya gerek yok

  /*
    List <Widget> _icerikler = [
    Text("İçerik 1"),
    Text("İçerik 2"),
    ];
    */ //öncesinde şu şekilde oluşturduğumuz Listenin değerlerini State içine gönderelim

  @override
  void initState() {
    // initState: State başlatıcı, yukarıya haber veren kişi
    // State oluşturma işlemi tamamlandıktan sonra çalışıyor
    // NİTELİKLER TAMAMLANDIKTAN SONRA DEĞERLERİNİ STATE İÇİNDE VERİRİZ
    super.initState();

    _icerikler = [
      Text("İçerik 1"),
      Text("İçerik 2"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold yaptık çünkü belli bir Tasarım düzeni içinde olmasını istiyoruz!
      //Container ise sadece bir kutu olacaktı.
      backgroundColor: Colors
          .white, //Bu Scaffold arka plan rengi, yani tüm ekran (buton ile 5 parçadan oluşur).
      appBar: AppBar(
        //AppBar uygulamanın üst kısmında yer alan bölüm.
        elevation: 0.0, //AppBar'ın zeminden yüksekliği.
        backgroundColor:
            Colors.white, //Aynı arkaplan rengini appBar içinde verdik.
        centerTitle: true, //başlığı (title) appBar'ın ortasına hizaladık.
        title: Text(
          "Uçarak gelsin", //sonuna virgül "," koymamız bunun devamı gelecek demek oluyor.
          style: TextStyle(
              fontSize:
                  20.0, //her zaman ondalıklı (double) sayı verilmesi gerekiyor.
              fontWeight: FontWeight.bold,
              color: Colors.grey),
        ),
      ),
      body: _icerikler[0], 
    );
  }
}
