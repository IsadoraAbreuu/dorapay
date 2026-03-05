import 'package:flutter/material.dart';
import 'package:bank/onBoarding1.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tela1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [ Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(height: 100),
            Image.asset("../assets/logo.png", width: 400),

            SizedBox(height: 10),
            Text("Simples. Rápido. Seguro.", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300, fontSize: 15)),

            SizedBox(height: 300),
            Image.asset("../assets/fingerprint.png", width: 100),

            SizedBox(height: 30),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF7517B8),
                  foregroundColor: Colors.white,
                  fixedSize: const Size(300, 40),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
              onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Onboarding1()));
           }, child: Text("Entrar"))
          ],
        ),
        ]
      ),
    );
  }
}