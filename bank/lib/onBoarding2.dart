import 'package:bank/login.dart';
import 'package:bank/onBoarding3.dart';
import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: ListView(
          children: [ Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Image.asset("../assets/onBoarding2.png", width: 300),

              SizedBox(height: 30),
              Container(
                width: 400,
                child: const Text(
                  "A Plataforma mais Segura para o Cliente",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                ),
              ),

              SizedBox(height: 10),
              Container(
              width: 300,
              child: const Text(
                "Transações protegidas, criptografia avançada e muito mais, mantendo seu dinheiro completamente seguro(a).",
                textAlign: TextAlign.center,
              ),
            ),
              
              SizedBox(height: 170),
              TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF7517B8),
                  foregroundColor: Colors.white,
                  fixedSize: const Size(300, 40),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Onboarding3()));
            }, child: Text("Próximo")),

              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
            }, child: Text("Pular"))
            ],
          ),
          ]
        ),
      );
  }
}