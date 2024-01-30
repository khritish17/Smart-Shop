import "package:flutter/material.dart";
import "package:intl/intl.dart";

class Intro_card extends StatefulWidget {
  final String owner_name;
  final String shop_name;
  const Intro_card({Key? key, required this.owner_name, required this.shop_name}): super(key:key);

  @override
  State<Intro_card> createState() => _Intro_cardState();
}

class _Intro_cardState extends State<Intro_card> {
  @override
  Widget build(BuildContext context) {
    final currentDateString = DateFormat('dd.MM.yyyy').format(DateTime.now());
    final fullDateString = DateFormat('EEE, dd MMM yyyy').format(DateTime.now()).toUpperCase();
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color.fromRGBO(47, 60, 51, 1),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60))
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // row[Date and Day + Indian Flag]
              Row(
                children: [
                  Icon(Icons.calendar_today, color: Colors.white, size: 15,),
                  Text("${fullDateString}",
                    style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // row[Image + Hello <name>]
              Text('${widget.owner_name}'),
              // shop name
              Text('${widget.shop_name}'),
            ],
          ),
        ),
      ),
    );
  }
}

