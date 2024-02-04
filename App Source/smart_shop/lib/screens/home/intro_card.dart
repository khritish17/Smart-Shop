import "package:flutter/material.dart";
import "package:intl/intl.dart";
import 'dart:math';

class Intro_card extends StatefulWidget {
  final String owner_name;
  final String shop_name;
  final String user_image_path;
  const Intro_card({Key? key, required this.owner_name, required this.shop_name, this.user_image_path = 'images/user_default_logo.png'}): super(key:key);

  @override
  State<Intro_card> createState() => _Intro_cardState();
}

class _Intro_cardState extends State<Intro_card> {
  @override
  Widget build(BuildContext context) {
    final currentDateString = DateFormat('dd.MM.yyyy').format(DateTime.now());
    final fullDateString = DateFormat('EEE, dd MMM yyyy').format(DateTime.now()).toUpperCase();
    final user_image_path = 'images/user_default_logo.png';
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color.fromRGBO(124, 191, 23, 1),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60))
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              // row[Date and Day + Indian Flag]
              Row(
                // mainAxisAlignment: MainAxisAlignment.,
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.calendar_today_rounded, color: Colors.white, size: 17,),
                  SizedBox(width: 10,),
                  Text("${fullDateString}",
                    style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // row[Image + Hello <name>]
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.all(2),
                height: 65.0, // Adjust image size as needed
                width: 65.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber, // Change color as needed
                ),
                child: ClipOval(child: Image.asset(user_image_path),),
                  // child:Image.asset(user_image_path)
              ),
                  SizedBox(width: 20,),
                  Text('Hello ${widget.owner_name.substring(0,min(widget.owner_name.length -1 , 17))} !',
                  style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              // shop name
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9 ,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(98, 160, 13, 1),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.house_rounded, color: Colors.white,),
                      SizedBox(width: 10,),
                      Text('${widget.shop_name}',
                        style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

