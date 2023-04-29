import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'.toUpperCase()),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.lightGreen,
      //Icons

      //Font Awesome Icons
      body: Center(
        child: IconButton(
          iconSize: 100,
          color: Colors.lightGreenAccent,
          icon: Icon(FontAwesomeIcons.angular),
          onPressed: () {},
          splashColor: Colors.white,
          highlightColor: Colors.red,
        ),
      ),

      //Material Icons
      // body: Center(
      //   child: IconButton(
      //     iconSize: 100,
      //     color: Colors.lightGreenAccent,
      //     icon: Icon(Icons.alt_route_rounded),
      //     onPressed: () {},
      //     splashColor: Colors.white,
      //     highlightColor: Colors.red,
      //   ),
      // ),


      //Images

      //AssetImages
      //body: Image(image: AssetImage("images/codingwithwaseem.png"),)
      //body: Image.asset("images/codingwithwaseem.png",height: 300.0,fit: BoxFit.contain,)

      //NetworkImages
      //body: Image.network("https://w0.peakpx.com/wallpaper/208/752/HD-wallpaper-whatsapp-dp-cartoon.jpg")
      // body: Image(
      //   image: NetworkImage(
      //       "https://w0.peakpx.com/wallpaper/208/752/HD-wallpaper-whatsapp-dp-cartoon.jpg"),
      //   width: 200.0,
      //   height: 800.0,
      //   fit: BoxFit.cover,
      // ),


    );
  }
}

int getNumber() {
  return Random().nextInt(100);
}
