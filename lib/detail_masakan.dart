import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ust_laili/menu_masakan.dart';

// ignore: use_key_in_widget_constructors, camel_case_types
class detail_masakan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int rand(int min, int max) {
      return min + Random().nextInt(max - min);
    }

    int gambar = rand(1, 8);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: const [Icon(Icons.add_shopping_cart)],
        backgroundColor: Colors.orange,
        title: const Text(
          'Nama Masakan',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Image.asset('assets/img/menu$gambar.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.white,
                      child: RichText(
                        text: const TextSpan(
                          text: 'Nama Masakan ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  '\nKue di Indonesia biasanya dikategorikan berdasarkan kadar airnya, yaitu kue basah dan kue kering.\nKue terasa lezat apabila dinikmati selagi hangat ditemani teh atau kopi sembari mengobrol dengan kerabat terdekat',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      const Expanded(child: Text('')),
                      Expanded(
                        child: Container(
                          alignment: Alignment.topCenter,
                          color: Colors.white,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => detail_masakan()));
                            },
                            child: const Text('+'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.topCenter,
                          child: const Text(
                            '\n1',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.topCenter,
                          color: Colors.white,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.orange),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => detail_masakan()));
                            },
                            child: const Text('-'),
                          ),
                        ),
                      ),
                      const Expanded(child: Text('')),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topCenter,
                    color: Colors.white,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => menu_masakan()));
                      },
                      child: const Text('Kembali Ke Menu'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
