import 'package:flutter/material.dart';

void main() {
  runApp(Uygulama());
}

class Uygulama extends StatefulWidget {
  @override
  _UygulamaState createState() => _UygulamaState();
}

class _UygulamaState extends State<Uygulama> {
  @override
  List<int> sayilar = [1, 2, 3, 4];
  List<String> metinler = ["bir", "iki", "üç", "dört"];

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'liste',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Listeler"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              sayilar.map((sayi) => Center(child: Text("$sayi"))).toList(),
        ),
      ),
    );
  }
}
