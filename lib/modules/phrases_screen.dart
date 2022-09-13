import 'package:flutter/material.dart';
import 'package:language/models/phrases.dart';
 import 'package:language/shared/item_2.dart';

class phrasesScreen extends StatelessWidget {
   final List<Phrases> phrases = [

     Phrases(
       sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav',
       jpName: 'Kōdoku suru koto o wasurenaide kudasai',
       enName: 'dont forget to subscribe',
     ),
     Phrases(
       sound: 'assets/sounds/phrases/i_love_programming.wav',
       jpName: 'Watashi wa puroguramingu daisukidesu',
       enName: 'i love  programming',
     ),
     Phrases(
       sound: 'assets/sounds/phrases/programming_is_easy.wav',
       jpName: 'Puroguramingu wa kantandesu ',
       enName: 'programming is easy',
     ),
     Phrases(
       sound: 'assets/sounds/phrases/where_are_you_going.wav',
       jpName: 'Doko ni iku no',
       enName: 'where are you going',
     ),
     Phrases(
       sound: 'assets/sounds/phrases/what_is_your_name.wav',
       jpName: 'Namae wa nandesu ka',
       enName: 'what is your name ?',
     ),
     Phrases(
       sound: 'assets/sounds/phrases/i_love_anime.wav',
       jpName: 'Watashi wa anime ga daisukidesu',
       enName: 'i love anime',
     ),
     Phrases(
       sound: 'assets/sounds/phrases/how_are_you_feeling.wav',
       jpName: 'Go kibun wa ikagadesu ka',
       enName: 'how are you feeling?',
     ),
     Phrases(
       sound: 'assets/sounds/phrases/are_you_coming.wav',
       jpName: 'Kimasu ka',
       enName: 'are you coming?',
     ),
     Phrases(
       sound: 'assets/sounds/phrases/yes_im_coming.wav',
       jpName: 'Hai watashi wa kite imasu',
       enName: 'yes i am coming',
     ),


   ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8EB1CD),
        title: Text(
          'Phrases',
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context,index){
          return ItemPhrases(phrases: phrases[index]);

        },
        itemCount: phrases.length,


      ),


    );
  }
}
