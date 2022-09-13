 import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
 import 'package:language/models/phrases.dart';

class ItemPhrases extends StatefulWidget {
  ItemPhrases({Key? key,  required this.phrases,  })  ;
  final Phrases phrases;



  @override
  State<ItemPhrases> createState() => _ItemState();
}

class _ItemState extends State<ItemPhrases> {
    bool isPlay=true;


  @override

  Widget build(BuildContext context) {

    return Container(
      height: 100.0,
      color: Color(0xff8EB1CD),
      child: Row(
        children: [

          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.phrases.jpName,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 15,

                    color: Colors.white,
                  ),
                ),
                Text(
                  widget.phrases.enName,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(

          ),
          IconButton(


              onPressed: () {
                setState(() {
                  isPlay=false;
                  Icons.pause;
                });


                final assetsAudioPlayer = AssetsAudioPlayer();

                assetsAudioPlayer.open(

                  Audio(widget.phrases.sound),
                );
              },

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
