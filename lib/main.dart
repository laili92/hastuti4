import 'package:flutter/material.dart';

import 'menu_masakan.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS - Laili',
      theme: ThemeData(primaryColor: Colors.red),
      home: UTS(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class UTS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[900],
        title: const Text(
          'LOGIN PAGE',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        actions: const [
          Icon(Icons.account_circle),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Container(
                        color: Colors.white,
                        child: Center(child: Image.asset("assets/logo.png")))),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.account_box),
                            border: UnderlineInputBorder(),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange,
                                width: 1,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.amber),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.password),
                            border: UnderlineInputBorder(),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange,
                                width: 1,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.amber),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            color: Colors.white,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.orange),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => menu_masakan()));
                              },
                              child: const Text('Login'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
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
                                        builder: (context) => UTS()));
                              },
                              child: const Text('Register'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                /*Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            alignment: Alignment.topCenter,
                            color: Colors.yellow,
                            child: const Text("Login"),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.yellow,
                            child: const Center(
                              child: Text("Register"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ), */
              ],
            ),
          ), /*
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        color: Colors.black12,
                        child: const Center(child: Text("Menu 1")))),
                Expanded(
                    child: Container(
                        color: Colors.orange,
                        child: const Center(child: Text("Menu 2")))),
                Expanded(
                    child: Container(
                        color: Colors.green,
                        child: const Center(child: Text("Menu 3")))),
              ],
            ),
          ),
        */
        ],
      ),
    );
  }
}

/*
Tugas 2 - 4
Nama : Laili Hastuti
NRP : 2210020138
Kelas : 5A NonReg SI BJM
*/