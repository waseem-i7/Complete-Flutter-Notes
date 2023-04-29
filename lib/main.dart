import 'package:flutter/material.dart';
import 'package:flutter_complete_notes/screens/AppbarInFlutter.dart';
import 'package:flutter_complete_notes/screens/ButtonsInFlutter.dart';
import 'package:flutter_complete_notes/screens/ContainerInFlutter.dart';
import 'package:flutter_complete_notes/screens/CustomWidgetInFlutter.dart';
import 'package:flutter_complete_notes/screens/DynamicListView.dart';
import 'package:flutter_complete_notes/screens/FloatingActionButtonInFlutter.dart';
import 'package:flutter_complete_notes/screens/ListViewInFlutter1.dart';
import 'package:flutter_complete_notes/screens/ListViewInFlutter2.dart';
import 'package:flutter_complete_notes/screens/NavigationViewInFlutter.dart';
import 'package:flutter_complete_notes/screens/RowAndColumnInFlutter.dart';
import 'package:flutter_complete_notes/screens/StackAndPositionedInFlutter.dart';
import 'package:flutter_complete_notes/screens/StatefulWidgetInFlutter.dart';
import 'package:flutter_complete_notes/screens/form.dart';
import 'package:flutter_complete_notes/screens/FormWithCheckbox.dart';

void main()  => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Flutter App',
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: MyForm1()
    );
  }
}