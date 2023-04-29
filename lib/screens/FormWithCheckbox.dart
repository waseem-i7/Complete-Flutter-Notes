import 'package:flutter/material.dart';

class MyForm1 extends StatefulWidget {
  const MyForm1({Key? key}) : super(key: key);

  @override
  State<MyForm1> createState() => _MyForm1State();
}

class _MyForm1State extends State<MyForm1> {
  final _productController = TextEditingController();
  final _productDesController = TextEditingController();
  bool? _checkBox, _listTileCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text("Product"),
            const Text("Add product details in the form below"),
            const SizedBox(
              height: 30.0,
            ),
            MyTextField(
                fieldName: "Product Name", myController: _productController),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
                fieldName: "Product Description",
                myController: _productDesController),
            const SizedBox(
              height: 10.0,
            ),

            //Two types of CheckBox ...

            //1.CheckBox
            Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.deepPurple,
                tristate: true,
                value: _checkBox,
                onChanged: (val) {
                  setState(() {
                    _checkBox = val;
                  });
                }),

            //2.CheckBoxListTile
            CheckboxListTile(
              value: _listTileCheckBox,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Top Product"),
              onChanged: (val) {
                setState(() {
                  _listTileCheckBox = val;
                });
              },
            ),

            //Submit Button
            const SizedBox(
              height: 20.0,
            ),
            myBtn(context)
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _productController.dispose();
    _productDesController.dispose();
    super.dispose();
  }

}

OutlinedButton myBtn(BuildContext context) {
  return OutlinedButton(
    style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
    onPressed: () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) {
      //     return Details(productName: _productController.text,);
      //   }),
      // );
    },
    child: Text(
      "Submit Form".toUpperCase(),
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}

//Custom Stateless Widget Class that helps re-usability
class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  }) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
          labelText: fieldName,
          prefixIcon: Icon(
            myIcon,
            color: prefixIconColor,
          ),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple.shade300),
          ),
          labelStyle: const TextStyle(color: Colors.deepPurple)),
    );
  }
}
