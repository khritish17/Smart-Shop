import "package:flutter/material.dart";
import "package:smart_shop/screens/home/intro_card.dart";
import "package:smart_shop/screens/home/process_card.dart";
import "package:smart_shop/screens/home/transaction_card.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // parameters required in home page
    /*
    Owner name and shop name
    Current month, current month profit value
    * */
    String owner_name = "Chinmayi B.";
    String shop_name = "Smruti Fashion";
    String current_month = "February";
    double profit = 2000;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Intro card
            Intro_card(owner_name: owner_name, shop_name: shop_name),
            SizedBox(height: 10,),
            // 'Process' text
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Process', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
            ),
            // list view of process
            Container(
              padding: EdgeInsets.only(left: 12, right: 12),
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProcessCard(process_name: "Billing",color: Color.fromRGBO(131, 201, 24, 1),icon: Icon(Icons.monetization_on, color: Colors.white.withOpacity(0.7),size: 100,),),
                  SizedBox(width: 10,),
                  ProcessCard(process_name: "Scan",color: Color.fromRGBO(59, 130, 246, 1),icon: Icon(Icons.qr_code_2, color: Colors.white.withOpacity(0.7),size: 100,),),
                  SizedBox(width: 10,),
                  ProcessCard(process_name: "Return",color: Color.fromRGBO(244, 63, 94, 1),icon: Icon(Icons.swap_horizontal_circle, color: Colors.white.withOpacity(0.7),size: 100,),),
                  SizedBox(width: 10,),
                  ProcessCard(process_name: "Inventory",color: Color.fromRGBO(57, 209, 170, 1),icon: Icon(Icons.inventory, color: Colors.white.withOpacity(0.7),size: 100,),),
                ],
              ),
            ),
            // transaction card
            SizedBox(height: 50,),
            TransactionCard( current_month: current_month, profit: profit,),
            
          ],
        ),
      ),
    );
  }
}
