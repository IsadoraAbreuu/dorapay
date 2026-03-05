import 'package:bank/login.dart';
import 'package:flutter/material.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: ListView(
          children: [ Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Image.asset("../assets/onBoarding3.png", width: 300),

              SizedBox(height: 30),
              Container(
                width: 400,
                child: const Text(
                  "Pagar Por Tudo é Fácil e Conveniente",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                ),
              ),

              SizedBox(height: 10),
              Container(
              width: 300,
              child: const Text(
                "Impressão digital integrada, reconhecimento facial e muito mais, mantendo você completamente seguro(a).",
                textAlign: TextAlign.center,
              ),
            ),
              
              SizedBox(height: 190),
              TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF7517B8),
                  foregroundColor: Colors.white,
                  fixedSize: const Size(300, 40),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
            }, child: Text("Entrar")),

            ],
          ),
          ]
        ),
      );
  }
}