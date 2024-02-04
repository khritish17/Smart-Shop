import "package:flutter/material.dart";

class ProcessCard extends StatefulWidget {
  final String process_name;
  const ProcessCard({Key? key, required this.process_name,}): super(key:key);

  @override
  State<ProcessCard> createState() => _ProcessCardState();
}

class _ProcessCardState extends State<ProcessCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 100,
      color: Colors.blue,
    );
  }
}
