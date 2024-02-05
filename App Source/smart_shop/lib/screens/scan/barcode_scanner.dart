import 'package:flutter/material.dart';

class barCodeScanner extends StatefulWidget {
  const barCodeScanner({super.key});

  @override
  State<barCodeScanner> createState() => _barCodeScannerState();
}

class _barCodeScannerState extends State<barCodeScanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Color.fromRGBO(47, 60, 51, 1),
        borderRadius: BorderRadius.circular(30)
      ),
    );
  }
}
