import 'package:flutter/material.dart';
import 'package:flutter_complete_notes/screens/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  var _productName ;
  final _productController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _productController.addListener(_updateText1);
  }
  void _updateText(val){
    setState(() {
      _productName = val;
    });
  }
  void _updateText1() {
    setState(() {
      _productName = _productController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              // TextField(
              //   decoration: InputDecoration(
              //       hintText: 'Product Name',
              //       icon: Icon(Icons.verified_user_outlined)),
              // ),
              // TextFormField(
              //   onChanged: (val){
              //     _updateText(val);
              //   },
              //   decoration: InputDecoration(
              //       labelText: 'Product Name',
              //       prefixIcon: Icon(Icons.verified_user_outlined),
              //       border: OutlineInputBorder()),
              // ),
              TextFormField(
                controller: _productController,
                decoration: InputDecoration(
                    labelText: 'Product Name',
                    prefixIcon: Icon(Icons.verified_user_outlined),
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 20.0,),
              myBtn(context)
            ],
          ),
        ));
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(productName: _productController.text,);
          }),
        );
      },
      child: Text(
        "Submit Form".toUpperCase(),
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }


  @override
  void dispose() {
    _productController.dispose();
    super.dispose();
  }
}
