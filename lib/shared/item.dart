 import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:language/models/component_item.dart';

class Item extends StatefulWidget {
    Item({Key? key, required this.number,  })  ;
  final Component number;



  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
    bool isPlay=true;


  @override

  Widget build(BuildContext context) {

    return Container(
      height: 100.0,
      color: Color(0xff8EB1CD),
      child: Row(
        children: [
          Container(color: Color(0xffF2F2F2), child: Image.asset(widget.number.image)),
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.number.jpName,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  widget.number.enName,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(


              onPressed: () {
                setState(() {
                  isPlay=false;
                  Icons.pause;
                });


                final assetsAudioPlayer = AssetsAudioPlayer();

                assetsAudioPlayer.open(

                  Audio(widget.number.sound),
                );
              },
              //
              //
              //  color:isMale?Colors.blue: Colors.grey[400],

              // icon: Icon(isPlay?
              //   Icons.play_arrow:Icons.pause,
              //    color: Colors.white,
              //    size: 28,
              // ),
              icon:isPlay?
              Icon(
                Icons.play_arrow,
                 color: Colors.white,
                 size: 28,
              ):
                  Icon(Icons.pause,
                    color: Colors.white,
                    size: 28,
                  )

          ),


        ],
      ),
    );
  }
}
