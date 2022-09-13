import 'package:flutter/material.dart';
import 'package:language/models/component_item.dart';
import 'package:language/shared/item.dart';

class FamilyScreen extends StatelessWidget {
   final List<Component> family = [
     Component(
        sound: 'assets/sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'Father'),
     Component(
        sound: 'assets/sounds/family_members/mother.wav',

        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaaoya',
        enName: 'Mother'),
     Component(
        sound: 'assets/sounds/family_members/son.wav',

        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son'),
     Component(
        sound:'assets/sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume ',
        enName: 'Daughter'),

     Component(
        sound:'assets/sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'older brother'),
     Component(
         sound:'assets/sounds/family_members/older sister.wav',
         image: 'assets/images/family_members/family_older_sister.png',
         jpName: 'Ane',
         enName: 'older sister'),
     Component(
         sound:'assets/sounds/family_members/younger brohter.wav',
         image: 'assets/images/family_members/family_younger_brother.png',
         jpName: 'Ototo',
         enName: 'younger brohter'),
     Component(
         sound:'assets/sounds/family_members/younger sister.wav',
         image: 'assets/images/family_members/family_younger_sister.png',
         jpName: 'Imoto',
         enName: 'younger sister'),
     Component(
         sound:'assets/sounds/family_members/grand father.wav',
         image: 'assets/images/family_members/family_grandfather.png',
         jpName: 'Ojisan',
         enName: 'grand father'),
     Component(
         sound:'assets/sounds/family_members/grand mother.wav',
         image: 'assets/images/family_members/family_grandmother.png',
         jpName: 'Sobo',
         enName: 'grand mother'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8EB1CD),
        title: Text(
          'Family Members',
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context,index){
          return Item(number: family[index]);

        },
        itemCount: family.length,


      ),

    );
  }
}
