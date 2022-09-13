
import 'package:flutter/material.dart';
import 'package:language/models/component_item.dart';
import 'package:language/shared/item.dart';

class ColorScreen extends StatelessWidget {
   final List<Component> colors = [
    Component(
        sound: 'assets/sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'black'),
    Component(
        sound: 'assets/sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown'),
    Component(
        sound: 'assets/sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: ' Hokori ppoi kiiro',
        enName: 'dusty yellow'),
    Component(
        sound: 'assets/sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gure',
        enName: 'gray'),
    Component(
        sound: 'assets/sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green'),
    Component(
        sound: 'assets/sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    Component(
        sound: 'assets/sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'kiiro',
        enName: 'yellow'),
    Component(
        sound: 'assets/sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiroi',
        enName: 'white'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xff8EB1CD),
        title: Text(
          'Colors',
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context,index){
          return Item(number: colors[index]);

        },
        itemCount: colors.length,


      ),
    );
  }
}
