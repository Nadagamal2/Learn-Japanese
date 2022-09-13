import 'package:flutter/material.dart';
import 'package:language/modules/color_screen.dart';
import 'package:language/modules/family_screen.dart';
import 'package:language/modules/numbers_screen.dart';
import 'package:language/modules/phrases_screen.dart';
import 'package:language/shared/comonent.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xff8EB1CD),
         title: Text(
          'Learn Japaness',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(

        color: Color(0xffC6D8E6),
        child: Column(
          
          children: [


            Category(
              text: 'Numbers',
              color:  Color(0xff8EB1CD),
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
                   return NumbersScreen();

                 }));
              },
            ),
            Category(
              text: 'Family Members',
              color:   Color(0xff8EB1CD),
                onTap: (){
    Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
    return FamilyScreen();}
    ));
              }

            ),
            Category(
              text: 'Colors',
              color:    Color(0xff8EB1CD),
                onTap: (){
    Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
    return  ColorScreen();

    }));}
            ),
            Category(
              text: 'Phrases',
              color: Color(0xff8EB1CD),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
                    return  phrasesScreen();

                  }));}
            ),
            Image(
              height: 300.0,
              width: 300.0,
              image: AssetImage(
                'assets/images/dd.jpeg',
              ),
            ),

          ],
        ),
      ),
    );
  }
}
