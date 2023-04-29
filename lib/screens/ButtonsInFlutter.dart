import 'package:flutter/material.dart';

class ButtonsInFlutter extends StatelessWidget {
  const ButtonsInFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          //TextButton
          child: TextButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Let's Begin"),
                Icon(Icons.add_shopping_cart_outlined)
              ],
            ),
            onPressed: null, //pass null to disable the button
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20.0),
              fixedSize: Size(300.0, 80.0),
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              //primary: Colors.yellow,
              onPrimary: Colors.black87,
              //elevation: 15,
              shadowColor: Colors.yellow,
              //side: BorderSide(color: Colors.black87, width: 2),
              //alignment: Alignment.topRight
              shape: StadiumBorder(),
            ),
          ),


          //OutlineButton
          // child: OutlinedButton(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text("Let's Begin"),
          //       Icon(Icons.add_shopping_cart_outlined)
          //     ],
          //   ),
          //   onPressed: () {},
          //   style: ElevatedButton.styleFrom(
          //     padding: EdgeInsets.all(20.0),
          //     fixedSize: Size(300.0, 80.0),
          //     textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          //     //primary: Colors.yellow,
          //     onPrimary: Colors.black87,
          //     //elevation: 15,
          //     shadowColor: Colors.yellow,
          //     //side: BorderSide(color: Colors.black87, width: 2),
          //     //alignment: Alignment.topRight
          //     shape: StadiumBorder(),
          //   ),
          // ),



            //Elevated Button
            // child: ElevatedButton(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text("Let's Begin"),
            //       Icon(Icons.add_shopping_cart_outlined)
            //     ],
            //   ),
            //   onPressed: () {},
            //   style: ElevatedButton.styleFrom(
            //     padding: EdgeInsets.all(20.0),
            //     fixedSize: Size(300.0, 80.0),
            //     textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            //     primary: Colors.yellow,
            //     onPrimary: Colors.black87,
            //     elevation: 15,
            //     shadowColor: Colors.yellow,
            //     side: BorderSide(color: Colors.black87, width: 2),
            //     //alignment: Alignment.topRight
            //     shape: StadiumBorder(),
            //   ),
            // ),
            )

        // body: Center(
        //   child: Directionality(
        //     textDirection: TextDirection.rtl,
        //     child: ElevatedButton.icon(
        //       //child: Text("let's Begin"),
        //       icon: Icon(Icons.add_shopping_cart),
        //       label: Text("Let's Begin"),
        //       onPressed: () {},
        //       style: ElevatedButton.styleFrom(
        //         padding: EdgeInsets.all(20.0),
        //         fixedSize: Size(300.0, 80.0),
        //         textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        //         primary: Colors.yellow,
        //         onPrimary: Colors.black87,
        //         elevation: 15,
        //         shadowColor: Colors.yellow,
        //         side: BorderSide(color: Colors.black87,width: 2),
        //         //alignment: Alignment.topRight
        //         shape: StadiumBorder()
        //       ),
        //     ),
        //   ),
        // ),
        );
  }
}
