import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
class Bollywood extends StatelessWidget {
  final List songName=[
    'Yara Teri Yari Ko',
    'Apna Har Din'
  ];
  final songs=[
    "assets/audio/apna har din.mp3",
    "assets/audio/yara teri yari.mp3"
  ];

final ap=AssetsAudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bollywood Songs'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.stop),
        onPressed: (){
          ap.pause();
        },
      ),
      body: ListView.builder(
        itemCount: songName.length,
          itemBuilder:(context,index){
          return Container(
            //width: double.infinity,
            decoration:BoxDecoration(
              border: Border.all(color: Colors.black12)),
            child: ListTile(
              title: Text(songName[index]),
              onTap: (){
                ap.stop();
                ap.open(Audio(songs[index]));
                ap.play();
                print(songs[index]);
                print("Clicked");
              },
            ),
          );
      }),
    );
  }
}

