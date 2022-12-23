import 'package:flutter/material.dart';
import 'package:ust_laili/detail_masakan.dart';
import 'dart:math';

// ignore: use_key_in_widget_constructors, camel_case_types
class menu_masakan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.add_shopping_cart)],
        backgroundColor: Colors.orange,
        title: const Text(
          'Menu Masakan',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          int rand(int min, int max) {
            return min + Random().nextInt(max - min);
          }

          int gambar = rand(1, 8);
          //String gambarin = 'assets/img/menu$gambar.png';
          var ran = rand(5, 50) * 1000;

          return Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: ListTile(
                leading: Image.asset('assets/img/menu$gambar.png'),
                title: Text(
                  "Masakan $index",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: const Text(
                  "Masakan anti kenyang, makan langsung KO",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text(
                  "Rp. $ran",
                  style: const TextStyle(color: Colors.green, fontSize: 15),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => detail_masakan()));
                },
              ));
        },
      ),
    );
  }
}
