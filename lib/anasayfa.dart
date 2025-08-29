import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/l10n/app_localizations.dart';
import 'package:tasarim_calismasi/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {

    // Başlangıçta padding, fontsize verirken kullanmak için
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza", style: TextStyle(color: yaziRenk1, fontFamily: "Pacifico", fontSize: 30),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(d!.pizzaBaslik, style: TextStyle(fontSize: 36, color: anaRenk, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Image.asset("resimler/pizza.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik: d.peynirYazi),
                Chip(icerik: d.sucukYazi),
                Chip(icerik: d.zeytinYazi),
                Chip(icerik: d.biberYazi),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text(d.teslimatSure, style: TextStyle(fontSize: 22, color: yaziRenk2, fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(d.teslimatBaslik, style: TextStyle(fontSize: 22, color: anaRenk, fontWeight: FontWeight.bold),),
                ),
                Text(d.pizzaAciklama,
                  style: TextStyle(fontSize: 22, color: yaziRenk2), textAlign: TextAlign.center,),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(d.fiyat, style: TextStyle(fontSize: 44, color: anaRenk, fontWeight: FontWeight.bold),),
              SizedBox(
                width: 200,
                height: 50,
                child: TextButton(onPressed: (){},
                  child: Text(d.butonYazi, style: TextStyle(color: yaziRenk1, fontSize: 18),),
                  style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//custom widget
class Chip extends StatelessWidget {
  String icerik;


  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(icerik, style: TextStyle(color: yaziRenk1),),
      style: TextButton.styleFrom(backgroundColor: anaRenk),
    );
  }
}

