import 'package:flutter/material.dart';
import 'package:flutter_complete_notes/Models/listview.dart';

class CustomWidgetInFlutter extends StatelessWidget {
  const CustomWidgetInFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTileWidget(
            title: "Mouse",
            subTitle: "A4Tech Mouse",
          ),
          ListTileWidget(
            title: "Laptop",
            subTitle: "beatsAudio Laptop Core i7",
            leadingIcon: Icons.laptop,
            listTileColor: Colors.yellow,
            trailingIcon: Icons.shopping_cart,
            iconColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
