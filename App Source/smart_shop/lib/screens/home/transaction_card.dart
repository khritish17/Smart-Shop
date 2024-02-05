import 'package:flutter/material.dart';

class TransactionCard extends StatefulWidget {
  final double profit;
  final String current_month;
  const TransactionCard({Key?key, required this.profit, required this.current_month}):super(key:key);

  @override
  State<TransactionCard> createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  @override
  Widget build(BuildContext context) {
    // print("${}");
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Icon up_down = Icon(Icons.arrow_circle_up, color: Colors.lightGreenAccent,size: 40,);
    Color profit_color = Colors.lightGreenAccent;
    if (widget.profit < 0)
    {
      up_down = Icon(Icons.arrow_circle_down, color:  Colors.redAccent,size: 40,);
      profit_color = Colors.redAccent;
    }


    return Container(
      height: height - height*0.824,
      width: width,
      decoration: BoxDecoration(
        color: Color.fromRGBO(47, 60, 51, 1),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // Transaction button
            SizedBox(
              width: width - width*0.12,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Transaction', style: TextStyle(fontSize: 22, color: Colors.white),),
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(72, 82, 74, 1),),
                )
            ),
            SizedBox(height: 2,),
            // Row: Cur. Month + Profit of cur month + up/down logo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 15,),
                // cur month
                Text("${widget.current_month}:",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 20,),
                // profit of cur month
                Text("\u20B9 ${widget.profit}",
                  style: TextStyle(
                    color: profit_color,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 20,),
                // up/down logo
                up_down
              ],
            )
          ],

        ),
      ),
    );
  }
}
