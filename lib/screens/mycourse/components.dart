import 'package:flutter/material.dart';

class Subjects extends StatelessWidget {
  const Subjects({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 111,
      width: 85,
      child: Column(
        children: [
          Image.asset("assets/icon 4.png"),
          SizedBox(height: 5,),
          Text('Physics',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }
}