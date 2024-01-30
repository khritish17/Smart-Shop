import "package:flutter/material.dart";
import "package:smart_shop/screens/home/intro_card.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Intro_card(owner_name: "Khritish", shop_name: "Diagonals")
          ],
        ),
      ),
    );
  }
}
