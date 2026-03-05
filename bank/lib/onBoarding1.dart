import 'package:bank/cadastro.dart';
import 'package:bank/login.dart';
import 'package:bank/onBoarding2.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: ListView(
          children: [ Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Image.asset("../assets/onBoarding1.png", width: 300),

              SizedBox(height: 30),
              Container(
                width: 400,
                child: const Text(
                  "O Pagamento Mais Rápido do Mundo",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                ),
              ),

              SizedBox(height: 10),
              Container(
              width: 270,
              child: const Text(
                "Integre múltiplos métodos de pagamento para agilizar seus processos rapidamente.",
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => Onboarding2()));
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