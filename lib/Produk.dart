import 'dart:js';

import 'package:flutter/material.dart';
import 'package:tugasutsvina/dataproduk.dart';
import 'package:tugasutsvina/descproduk.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Shoes One Full'),
      ),
      body: ListView.builder(
          itemCount: dataShoess.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              Shoes: dataShoess[index],
                            )));
              },
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          dataShoess[index].images,
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(dataShoess[index].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.blueAccent)),
                        Text('HTM : ${dataShoess[index].htm}'),
                        ClipOval(
                          child: Material(
                            color: Colors.blue, // button color
                            child: InkWell(
                              splashColor: Colors.red, // inkwell color
                              child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Icon(Icons.favorite)),
                              onTap: () {},
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildDrawer() {
    return SizedBox(
      //membuat menu drawer
      child: Drawer(
        //membuat list,
        //list digunakan untuk melakukan scrolling jika datanya terlalu panjang
        child: ListView(
          padding: EdgeInsets.zero,
          //di dalam listview ini terdapat beberapa widget drawable
          children: [
            UserAccountsDrawerHeader(
              //membuat gambar profil
              currentAccountPicture:
                  Image(image: NetworkImage("assets/images/air jordan.jpg")),
              //membuat nama akun
              accountName: Text("Shoes School One Full"),
              //membuat nama email
              accountEmail: Text("ig: @Ssof_School"),
              //memberikan background
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("assets/images/air jordan.jpg"),
                      fit: BoxFit.cover)),
            ),
            //membuat list menu
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Beranda"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text("Transaksi"),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.emoji_emotions),
              title: Text("Profil"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
