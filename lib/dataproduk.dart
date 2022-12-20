import 'package:flutter/material.dart';
import 'package:tugasutsvina/descproduk.dart';

class DetailScreen extends StatelessWidget {
  final SepatuOneFull Shoes;

  const DetailScreen({Key? key, required this.Shoes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Shoes.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                Shoes.images,
                width: 400,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            Shoes.name,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 35, color: Colors.grey),
          ),
          Text('HTM: ${Shoes.htm}'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Description : ' + Shoes.description,
              maxLines: 15,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.brown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
