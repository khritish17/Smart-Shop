import "package:flutter/material.dart";

class ProcessCard extends StatefulWidget {
  final String process_name;
  final Color color;
  final Icon icon;
  const ProcessCard({Key? key, required this.process_name,required this.color, required this.icon}): super(key:key);

  @override
  State<ProcessCard> createState() => _ProcessCardState();
}

class _ProcessCardState extends State<ProcessCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if (widget.process_name == "Billing"){
          // call the billing page
        }
        else if (widget.process_name == "Scan"){
          // call the scanning page
        }
        else if(widget.process_name == "Return"){
          // call the return page
        }
        else if(widget.process_name == "Inventory"){
          // call the inventory page
        }
      },
      child: Container(
        height: 220,
        width: 180,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.all(Radius.circular(40))
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${widget.process_name}",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),),
              SizedBox(height: 20,),
              Center(child: widget.icon)
            ],
          ),
        ),

      ),
    );
  }
}
