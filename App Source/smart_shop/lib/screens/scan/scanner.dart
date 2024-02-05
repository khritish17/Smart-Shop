import 'package:flutter/material.dart';
import 'package:smart_shop/screens/scan/back_button.dart';
import 'package:smart_shop/screens/scan/barcode_scanner.dart';
import 'package:smart_shop/screens/scan/search_card.dart';

class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      // resizeToAvoidBottomPadding: false,
      // backgroundColor: Color.fromRGBO(131, 201, 24, 1),
      backgroundColor: Colors.black,
      body: Container(
        height: height,
        width: width,
        child: SafeArea(
          child:  SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // back button
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: backButton(),
                  ),
                  //Scanner direction text
                  Center(child: Text('SCANNER',
                    style: TextStyle(
                        color: Color.fromRGBO(131, 201, 24, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),
                  ),),
                  Center(
                      child: Text("Scan your product barcode",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17
                        ),
                      )
                  ),
                  // bar code scanner
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: barCodeScanner(),
                  ),
                  // search card
                  SizedBox(height: 82,),
                  Column(
                    children: [
                      searchCard(),
                    ],
                  ),
                ],
              ),
          ),
        ),
      ),
    );
  }
}
