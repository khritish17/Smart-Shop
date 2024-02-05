import 'package:flutter/material.dart';

class backButton extends StatefulWidget {
  const backButton({super.key});

  @override
  State<backButton> createState() => _backButtonState();
}

class _backButtonState extends State<backButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
        ),

        child: Center(
          child: Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
                // color: Color.fromRGBO(131, 201, 24, 1),
                color: Colors.black,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
          ),
        ),
      ),
    );
  }
}
