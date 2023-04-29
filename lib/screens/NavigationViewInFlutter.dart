import 'package:flutter/material.dart';

class NavigationViewInFlutter extends StatelessWidget {
  NavigationViewInFlutter({Key? key}) : super(key: key);

  List<String> products = ["Bed", "Sofa", "Chair"];
  List<String> productsDetails = [
    "King size bed",
    "King size sofa",
    "Wooden size chair"
  ];
  List<int> price = [300, 2500, 1860];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      drawer: Drawer(
        elevation: 50.0,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(foregroundImage: AssetImage("images/codingwithwaseem.png"),),
              otherAccountsPictures: [
                CircleAvatar(foregroundImage: AssetImage("images/codingwithwaseem.png"),),
                CircleAvatar(foregroundImage: AssetImage("images/codingwithwaseem.png"),),
              ],
              accountEmail: Text("support@waseem.com"),
              accountName: Text("Coding with Waseem"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Shop"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorites"),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("Labels"),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("Red"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("Green"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("Blue"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(products[index][0]),
              ),
              title: Text(products[index]),
              subtitle: Text(productsDetails[index]),
              trailing: Text(price[index].toString()),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
