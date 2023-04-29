import 'package:flutter/material.dart';

class StatefulWidgetInFlutter extends StatefulWidget {
  const StatefulWidgetInFlutter({Key? key}) : super(key: key);

  @override
  State<StatefulWidgetInFlutter> createState() =>
      _StatefulWidgetInFlutterState();
}

class _StatefulWidgetInFlutterState extends State<StatefulWidgetInFlutter> {

  bool liked = false;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widgets"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.grey.shade50,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Colors.grey.shade300,
              title: Text("Nike Shoes"),
              trailing: IconButton(
                icon: liked? (Icon(Icons.favorite)) : (Icon(Icons.favorite_border)),
                onPressed: () {
                  setState(() => liked = !liked);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
