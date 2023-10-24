import 'package:flutter/material.dart';
import 'package:workyarb/cafeWidget.dart';
import 'package:workyarb/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: MyHome.routeName,
      routes: {
        MyHome.routeName: (context) => MyHome(),
        Cafe.routeName:(context) => Cafe()

      },
    );
  }
}

