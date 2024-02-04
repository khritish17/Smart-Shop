import "package:flutter/material.dart";
import "package:smart_shop/screens/home/intro_card.dart";
import "package:smart_shop/screens/home/process_card.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Intro_card(owner_name: "Chinmayi Behera", shop_name: "Smruti Fashion"),
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProcessCard(key: UniqueKey(), process_name: "Billing",),
                  SizedBox(width: 20,),
                  ProcessCard(key: UniqueKey(), process_name: "Billing",),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
