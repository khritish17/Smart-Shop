import 'package:flutter/material.dart';

class searchCard extends StatefulWidget {
  const searchCard({super.key});

  @override
  State<searchCard> createState() => _searchCardState();
}

class _searchCardState extends State<searchCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        // color: Colors.white,
          color: Color.fromRGBO(47, 60, 51, 1),
        borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(50))
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),

        child: Column(
          children: [
            // product id text
            Text("PRODUCT ID",
            style: TextStyle(
              color: Color.fromRGBO(131, 201, 24, 1),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 20,),
            // Input text field
            Container(
              width: MediaQuery.of(context).size.width*0.9,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                // color: Color.fromRGBO(131, 201, 24, 1),
                color: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Product ID",
                    hintStyle: TextStyle(color: Color.fromRGBO(131, 201, 24, 1)),
                  ),
                ),
              ),
            ),
            // search button
            SizedBox(height: 15,),
            InkWell(
              onTap: (){},
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),

                child: Center(
                  child: Container(
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                        // color: Colors.white,
                        color: Color.fromRGBO(47, 60, 51, 1),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Icon(Icons.search, color: Colors.white,size: 35,),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
