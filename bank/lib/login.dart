import 'package:bank/cadastro.dart';
import 'package:bank/homePage.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFEAEAEA), 
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, color: Color.fromARGB(255, 0, 0, 0)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(height: 25),
          Text("Login", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30)),
          SizedBox(height: 20),
          
          Text("Email:", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16)),
          SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Email", 
              hintText: "Digite aqui seu email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8), 
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: const Color(0xFF613798), 
                  width: 1,
                ),
              ),
            )
          ),

          SizedBox(height: 20),
          
          Text("Senha:", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16)),
          SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Senha", 
              hintText: "Digite aqui sua senha", 
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8), 
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: const Color(0xFF613798), 
                  width: 1,
                ),
              ),
            )
          ),

          SizedBox(height: 40),
          TextButton(
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF7517B8),
              foregroundColor: Colors.white,
              fixedSize: const Size(100, 40),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
        }, child: Text("Login")),

        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ainda não tem uma conta?", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14)),

            TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Cadastro()));
        }, child: Text("Cadastrar-se", style: TextStyle(fontWeight: FontWeight.w500), selectionColor: Colors.black)),
          ],
        )
        ],
      ),
    );
  }
}