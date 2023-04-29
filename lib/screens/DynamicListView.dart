import 'package:flutter/material.dart';

class DynamicListView extends StatelessWidget {
  DynamicListView({Key? key}) : super(key: key);

  List<String> products = ["Bed","Sofa","Chair"];
  List<String> productsDetails = ["King size bed","King size sofa","Wooden size chair"];
  List<int> price = [300,2500,1860];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(child: Text(products[index][0]),),
              title: Text(products[index]),
              subtitle: Text(productsDetails[index]),
              trailing: Text(price[index].toString()),
              onTap: (){},
            );
          },
        ),
      ),
    );
  }
}
