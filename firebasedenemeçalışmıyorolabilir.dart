import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('firebase'),
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('iller').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Icon(
                  Icons.error,
                  size: 80,
                ),
              );
            }
            //print(snapshot.data.runtimeType);
            final QuerySnapshot querySnapshot=snapshot.data;
            return ListView.builder(
              itemBuilder: (context, index)=>ListTile(title: ,),
            );
          },
        ),
      ),
    );
  }
}
