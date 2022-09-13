import 'package:flutter/material.dart';

class Category extends StatelessWidget {
     Category({this.text, this.color,this.onTap}) ;
String? text ;
Color? color;
 VoidCallback? onTap ;
// VoidCallback? onPressed ;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
       onTap:  onTap,
      child: Container(








         margin: EdgeInsets.all(10.0),
         padding: EdgeInsets.only(left: 16.0),
        alignment: Alignment.centerLeft,
        height: 70.0,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );

  }

}

