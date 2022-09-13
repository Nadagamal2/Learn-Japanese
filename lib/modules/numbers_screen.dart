import 'package:flutter/material.dart';
import 'package:language/models/component_item.dart';
import 'package:language/shared/item.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({Key? key}) : super(key: key);
  final List<Component> numbers = [
    Component(
      sound: 'assets/sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one'),
    Component(
        sound: 'assets/sounds/numbers/number_two_sound.mp3',

        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two'),
    Component(
        sound: 'assets/sounds/numbers/number_three_sound.mp3',

        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three'),
    Component(
        sound: 'assets/sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'four'),
    Component(
        sound: 'assets/sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five'),
    Component(
        sound: 'assets/sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six'),
    Component(
        sound: 'assets/sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'seven'),
    Component(
        sound: 'assets/sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'eight'),
    Component(
        sound: 'assets/sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyu',
        enName: 'nine'),
    Component(
        sound: 'assets/sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Ju',
        enName: 'ten'),
  ];

  // Number one = Number(
  //   image: 'assets/images/numbers/number_one.png',
  //   jpName: 'ichi',
  //   enName: 'one',
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8EB1CD),
        title: Text(
          'Numbers',
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context,index){
          return Item(number: numbers[index]);

        },
        itemCount: numbers.length,


      ),
    );

  }

//  List<Widget>getList(List<Number>numbers){
//     List<Item>itemsList=[];
//     for(int i=0;i<numbers.length;i++){
//       itemsList.add(Item(number: numbers[i]));
//
//     }
// return itemsList;
//  }
}

