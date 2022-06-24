import 'package:flutter/material.dart';
import 'package:mydemo/pages/allmembers.dart';
import 'package:mydemo/pages/bazar.dart';
import 'package:mydemo/pages/meal.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  final pages = [
    Allmembers(),
    Bazar(),
    Meal(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: menu(),
          body: pages[_currentIndex],
        ));
  }

  Widget menu() {
    return Container(
      color: Colors.white,
      child: TabBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        labelColor: Colors.black,
        unselectedLabelColor: Colors.black,
        indicator: BoxDecoration(
          color: Colors.grey,
        ),
        tabs: [
          Tab(
            text: "Members",
          ),
          Tab(
            text: "Bazarlist",
          ),
          Tab(
            text: "Meal",
          ),
        ],
      ),
    );
  }
}
