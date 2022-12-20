import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tugasutsvina/Halamanlogin.dart';

class Halamanregister extends StatelessWidget {
  const Halamanregister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.yellow, Colors.blue])),
        child: Card(
            child: Column(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage('image/logo.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Text('Registrasi',
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold)),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0)),
                      hintText: "Nama",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0)),
                      hintText: "Username",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0)),
                      hintText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0)),
                      hintText: "Re-Password",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: (() {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Halamanregister()));
                    }),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Register'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ])),
          ],
        )),
      ),
    );
  }
}
