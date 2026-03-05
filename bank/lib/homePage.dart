import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(backgroundColor: Colors.grey.shade300, child: Icon(Icons.person, color: Colors.black)),

              Column(
                children: [
                  Text("Bem vindo(a) de volta,"),
                  Text("Isadora", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                  ),
                ],
              ),
              CircleAvatar(backgroundColor: Colors.grey.shade300, child: Icon(Icons.notifications_none)),
            ],
          ),

          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: const Color(0xFF7517B8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Saldo",style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white, fontSize: 18,)),
                SizedBox(height: 10),
                Text("R\$ 32.244,67", style: TextStyle(color: Colors.white, fontSize: 20),),
              ],
            ),
          ),

          const SizedBox(height: 40),
          const Text("Ações rápidas", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),

          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    CircleAvatar(radius: 28, backgroundColor: Colors.grey.shade300, child: Icon(Icons.qr_code, color: Color(0xFF7517B8))),
                    SizedBox(height: 5),
                    Text("Pix",style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),

              TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    CircleAvatar(radius: 28, backgroundColor: Colors.grey.shade300, child: Icon(Icons.swap_horiz, color: Color(0xFF7517B8))),
                    SizedBox(height: 5),
                    Text("Transferência", style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),

              TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    CircleAvatar(radius: 28, backgroundColor: Colors.grey.shade300, child: Icon(Icons.attach_money, color: Color(0xFF7517B8))),
                    SizedBox(height: 5),
                    Text("Depósito", style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),

              TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    CircleAvatar(radius: 28, backgroundColor: Colors.grey.shade300, child: Icon(Icons.more_horiz, color: Color(0xFF7517B8))),
                    SizedBox(height: 5),
                    Text("Mais", style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 40),
          const Text("Meus Cartões", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text("Cartão débito de Isa", style: TextStyle(fontSize: 18)),

          const SizedBox(height: 15),
          Image.asset("../assets/cartao.png", width: 500),

          const SizedBox(height: 40),
          const Text("Transferências", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF7517B8),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: "Carteira",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Serviços",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Meu perfil",
          ),
        ],
      ),
    );
  }
}