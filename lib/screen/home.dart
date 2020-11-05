import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movecoin/screen/login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Movecoin",
          style: TextStyle(fontSize: 25, fontFamily: 'Montserrat'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => Login());
              Navigator.push(context, route);
            },
          ),
        ],
      ),
      body: Center(
      ),
    );
  }
}
