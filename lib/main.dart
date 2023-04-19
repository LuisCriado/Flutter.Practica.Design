
import 'package:design/widgets/design_basic.dart';
import 'package:flutter/material.dart';

void main() => runApp(  MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'basic_design',


      routes: {'basic_design': ( _ ) => DesingBasicScreen()},
    );
  }
}
