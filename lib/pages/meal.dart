import 'package:flutter/material.dart';

class Meal extends StatefulWidget {
  const Meal({Key? key}) : super(key: key);

  @override
  State<Meal> createState() => _MealState();
}

class _MealState extends State<Meal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Meal"),
      ),
    );
  }
}
