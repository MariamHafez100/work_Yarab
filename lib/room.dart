import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Room extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 3,
        mainAxisSpacing: 3

    ), itemBuilder:(context, index) {
      return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(

          decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(30),
              boxShadow: List.filled(10, BoxShadow(color: Colors.black)),
              image: DecorationImage(image: AssetImage("assets/image/play.jpg"))
          ),
          child: Center(child: Text("ROOM ${index+1}",style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,fontSize: 21),)),
        ),
      );
    },
      itemCount: 10,
    );
  }

}