import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scrollDesign',
      routes: {
        'basicDesign': (_) => BasicDesignScreen(),
        'scrollDesign': (_) => ScrollDesign()
      },
      theme: ThemeData.dark(),
    );
  }
}
