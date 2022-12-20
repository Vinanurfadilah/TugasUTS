import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tugasutsvina/Halamanlogin.dart';
import 'Produk.dart';
import 'Halamanlogin.dart';

class HalamanUtama extends StatefulWidget {
  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Halamanlogin()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:EdgeInsets.all(100) ,
        width: double.infinity,
       height: double.infinity,
       decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft,
        colors: [Colors.yellow,Colors.blue])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat Berbelanja:)',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
