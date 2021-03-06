import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  final response =
      await (http.Client().get((Uri.parse("https://covid19.saglik.gov.tr/"))));
  if (response.statusCode == 200) {
    var document = parse(response.body);
    //print(document.getElementsByClassName("table")[0].children[1].text);

    List<String> iller = [];
    List<String> sayilar = [];
    Map<String, String> map = {};
    String il;
    String sayi;
    for (var i = 1; i <= 81; i++) {
      il = document.getElementsByTagName("tr")[i].children[0].text;
      sayi = document.getElementsByTagName("tr")[i].children[1].text;

      iller.add(il);
      sayilar.add(sayi);

      //print(il + "" + sayi);
    }
    map = Map.fromIterables(iller, sayilar);
    map.forEach((il, sayi) {
      print(il + " " + sayi);
    });
  } else {
    throw Exception();
  }
}
