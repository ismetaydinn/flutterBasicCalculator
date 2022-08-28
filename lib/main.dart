import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  String girilenDeger = "0";
  late int sayi1;
  late int sayi2;
  int sonuc = 0;
  String islemKontrol = "";
  String islem = "";

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HESAP MAKİNESİ"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Text("İKİ İŞLEMDEN FAZLASI HATA ÇIKARTABİLİR."),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text("Sonuç: $sonuc", style: const TextStyle(color: Colors.black54, fontSize: 30),),
            ),
            Text("İşlem: $islem", style: const TextStyle(color: Colors.black54, fontSize: 20),),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 7.5, left: 7.5),
              child: Row(
                children: [
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black
                      ),
                      onPressed: (){
                        setState(() {
                          girilenDeger = "0";
                          islem = "";
                          sonuc = 0;
                        });
                      },
                      child: const Text("C", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Text(girilenDeger, style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 7.5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            if(girilenDeger == "0"){
                              girilenDeger = "7";
                            }else{
                              girilenDeger += "7";
                            }
                            islem += "7";
                          });
                        },
                        child: const Text("7", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          if(girilenDeger == "0"){
                            girilenDeger = "8";
                          }else{
                            girilenDeger += "8";
                          }
                          islem += "8";
                        });
                      },
                      child: const Text("8", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          if(girilenDeger == "0"){
                            girilenDeger = "9";
                          }else{
                            girilenDeger += "9";
                          }
                          islem += "9";
                        });
                      },
                      child: const Text("9", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo),
                      onPressed: (){
                        setState(() {
                            girilenDeger = girilenDeger.substring(0, girilenDeger.length - 1);
                        });
                      },
                      child: const Text("<-", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                  ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 7.5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          if(girilenDeger == "0"){
                            girilenDeger = "4";
                          }else{
                            girilenDeger += "4";
                          }
                          islem += "4";
                        });
                      },
                      child: const Text("4", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          if(girilenDeger == "0"){
                            girilenDeger = "5";
                          }else{
                            girilenDeger += "5";
                          }
                          islem += "5";
                        });
                      },
                      child: const Text("5", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          if(girilenDeger == "0"){
                            girilenDeger = "6";
                          }else{
                            girilenDeger += "6";
                          }
                          islem += "6";
                        });
                      },
                      child: const Text("6", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo),
                      onPressed: (){
                        setState(() {
                          print("BÖLME İŞLEMİ AKTİF DEĞİL");
                          girilenDeger = "inactive";
                        });
                      },
                      child: const Text("/", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 7.5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          if(girilenDeger == "0"){
                            girilenDeger = "1";
                          }else{
                            girilenDeger += "1";
                          }
                          islem += "1";
                        });
                      },
                      child: const Text("1", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          if(girilenDeger == "0"){
                            girilenDeger = "2";
                          }else{
                            girilenDeger += "2";
                          }
                          islem += "2";
                        });
                      },
                      child: const Text("2", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          if(girilenDeger == "0"){
                            girilenDeger = "3";
                          }else{
                            girilenDeger += "3";
                          }
                          islem += "3";
                        });
                      },
                      child: const Text("3", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo),
                      onPressed: (){
                        setState(() {
                          islem += "*";
                          int intGirilenDeger = int.parse(girilenDeger);
                          sayi1 = intGirilenDeger;
                          girilenDeger = "0";
                          islemKontrol = "carpma";
                        });
                      },
                      child: const Text("x", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2.5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          if(girilenDeger == "0"){
                            girilenDeger = "0";
                          }else{
                            girilenDeger += "0";
                          }
                          islem += "0";
                        });
                      },
                      child: const Text("0", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo),
                      onPressed: (){
                        setState(() {
                          islem += "+";
                          int intGirilenDeger = int.parse(girilenDeger);
                          sayi1 = intGirilenDeger;
                          girilenDeger = "0";
                          islemKontrol = "toplama";
                        });
                      },
                      child: const Text("+", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo),
                      onPressed: (){
                        setState(() {
                          islem += "-";
                          int intGirilenDeger = int.parse(girilenDeger);
                          sayi1 = intGirilenDeger;
                          girilenDeger = "0";
                          islemKontrol = "cikarma";
                        });
                      },
                      child: const Text("-", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    width: ekranGenisligi/4.5,
                    height: ekranYuksekligi/10,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo),
                      onPressed: (){
                        setState(() {
                          int intGirilenDeger = int.parse(girilenDeger);
                          sayi2 = intGirilenDeger;
                          if(islemKontrol=="toplama"){
                            sonuc = sayi1 + sayi2;
                          }
                          if(islemKontrol=="cikarma"){
                            sonuc = sayi1 - sayi2;
                          }
                          if(islemKontrol=="carpma"){
                            sonuc = sayi1 * sayi2;
                          }
                        });
                      },
                      child: const Text("=",  style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


