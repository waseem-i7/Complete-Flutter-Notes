import 'package:flutter/material.dart';

class ListViewInFlutter1 extends StatelessWidget {
  const ListViewInFlutter1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          itemExtent: 100.0,
          reverse: false,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.alarm_on_sharp),backgroundColor: Colors.brown.shade300,foregroundColor: Colors.white,),
              title: Text("Sales"),
              subtitle: Text("Sales of the week"),
              trailing: Icon(Icons.add),
              onTap: (){},
              tileColor: Colors.brown.shade50,
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle_outlined),
              title: Text("Customers"),
              subtitle: Text("Total Customers Visited"),
              trailing: Text("200"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.alarm_on_sharp),
              title: Text("Profit"),
              subtitle: Text("Profit of the week"),
              trailing: Text("1500"),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
