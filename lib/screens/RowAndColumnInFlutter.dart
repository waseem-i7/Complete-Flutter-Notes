import 'package:flutter/material.dart';

class RowAndColumnInFlutter extends StatelessWidget {
  const RowAndColumnInFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows and Columns"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Image(image: AssetImage("images/codingwithwaseem.png"),width: 150,)),
                Expanded(flex:2,child: Image(image: AssetImage("images/codingwithwaseem.png"),width: 150,)),
                Expanded(flex:4,child: Image(image: AssetImage("images/codingwithwaseem.png"),width: 150,)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_border),
                Icon(Icons.star_border),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.phone,size: 35.0,),
                    Text("Phone")
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.alt_route,size: 35.0,),
                    Text("Route")
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share,size: 35.0,),
                    Text("Share")
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
