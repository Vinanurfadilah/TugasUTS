import 'dart:html';
import 'package:flutter/material.dart';
import 'package:tugasutsvina/Halamanregister.dart';
import 'package:tugasutsvina/Produk.dart';
import 'Halaman utama.dart';

void main() {
  runApp(const MaterialApp(
    title: "Halaman Login",
    home: Halamanlogin(),
    debugShowCheckedModeBanner: false,
  ));
}

class Halamanlogin extends StatefulWidget {
  const Halamanlogin({super.key});

  @override
  State<Halamanlogin> createState() => _HalamanloginState();
}

class _HalamanloginState extends State<Halamanlogin> {
  bool visibilityPass = false;

  final String MyUser = 'Vina';
  final String MyPass = '12345';

  TextEditingController vUser = TextEditingController();
  TextEditingController vPass = TextEditingController();

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
          elevation: 10,
          shadowColor: Colors.red,
          child: Column(children: [
            Container(
              width: 100,
              height: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage('image/logo.jpg'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                      controller: vUser,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0)),
                        hintText: 'Inputkan Username Anda',
                        prefixIcon: Icon(Icons.person),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                      controller: vPass,
                      obscureText: !visibilityPass,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0)),
                          hintText: 'Inputkan Password Anda',
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                visibilityPass = !visibilityPass;
                              });
                            },
                            icon: visibilityPass
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                          ))),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: (() {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => home()));
                    }),
                    child: Text("LOGIN"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: (() {
                      ceklogin(context);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Halamanregister()));
                    }),
                    child: Text("REGISTER"),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  void ceklogin(BuildContext context) {
    // final String MyUser = 'Vina';
    //final String MyPass = '12345';

    if (vUser.text == MyUser && vPass.text == MyPass) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HalamanUtama(),
          ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Username atau Password Anda salah...'),
        backgroundColor: Colors.black,
      ));
    }
  }
}
