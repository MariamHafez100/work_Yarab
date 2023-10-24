import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workyarb/room.dart';

import 'cafeWidget.dart';

class MyHome extends StatefulWidget{
  static const String routeName = "home";

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xb801204b),
      appBar: AppBar(
        backgroundColor: Color(0xb808111e),
        title: Text("GIRL STATION",style: TextStyle(color: Colors.red),),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        onTap: (index) {
          selected = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed, // Add this line
        backgroundColor: Color(0xb808111e),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "HOME"),
          BottomNavigationBarItem(icon: InkWell(
              // onTap: () {
              //   Navigator.pushNamed(context, Cafe.routeName);
              // },
              child: Icon(Icons.local_cafe_sharp)),label: "CAFE' "),

          BottomNavigationBarItem(icon: Icon(Icons.sports_basketball),label: "BILLIARDS"),

          BottomNavigationBarItem(icon: Icon(Icons.sports_volleyball_outlined),label: "PING"),


        ],
      ),
      body :tab[selected]
    );
  }

  List<Widget> tab = [
    Room(),
    Cafe(),

  ];
}