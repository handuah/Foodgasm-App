import 'package:flutter/material.dart';
import 'package:foodgasm/screens/startPage.dart';

void main() {
  runApp(FoodGasm());
}

class FoodGasm extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodgasm',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: StartPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
