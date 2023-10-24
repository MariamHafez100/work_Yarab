import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cafe extends StatelessWidget{
  static const String routeName = "cafe";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xb808111e) ,
      appBar: AppBar(backgroundColor:Color(0xb808111e),title: Text("CAFE",style: TextStyle(color: Colors.red),)),
      body: Container(
        //color: Color(0xb808111e),
        child: Image.asset("assets/image/cofe.jpg"),
      ),
    );
  }

}