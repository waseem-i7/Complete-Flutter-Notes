import 'package:flutter/material.dart';

class AppbarInFlutter extends StatelessWidget {
  const AppbarInFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text("Home"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          //IconButton(icon : Icon(Icons.menu_book), onPressed: (){},),
        ],
        elevation: 0,
        //titleSpacing: 20.0,
        centerTitle: true,
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        flexibleSpace: Image(
          image: NetworkImage(
              "https://www.shutterstock.com/image-photo/old-brick-black-color-wall-260nw-1605128917.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      body: Text("Hello World"),
    );
  }
}
