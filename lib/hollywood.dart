import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
class HollyWood extends StatelessWidget {
  final List songName=[
    'Baby Baby Justin Bieber',
    'Good Life',
    'I m so lonely'
  ];
  final songs=[
    "assets/audio/baby.mp3",
    "assets/audio/good life.mp3",
    "assets/audio/i so lonely.mp3"
  ];
  final pic=[
    "assets/images/baby.jpg",
    "assets/images/goodlife.webp",
    "assets/images/goodlife.webp"
  ];

  final ap=AssetsAudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HollyWood Songs'),
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
                leading: CircleAvatar(
                  backgroundImage: AssetImage(pic[index]),
                ),
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
class Classical extends StatelessWidget {
  final List songName=[
    'Tere jaisa yaar kaha',
    'Dheere chalo',
    'Zindgi Ek safar hai suhana'
  ];
  final songs=[
    "assets/audio/tere jaisa yaar kaha.mp3",
    "assets/audio/dheere chalo.mp3",
    "assets/audio/zindagi ek safar.mp3"
  ];
  final pic=[
    "assets/images/baby.jpg",
    "assets/images/goodlife.webp",
    "assets/images/goodlife.webp"
  ];

  final ap=AssetsAudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classical Songs'),
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
                leading: CircleAvatar(
                  backgroundImage: AssetImage(pic[index]),
                ),
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
class Devotional extends StatelessWidget {
  final List songName=[
    'Lagi tere Sang lagan',
    'Dheere chalo',
    'Zindgi Ek safar hai suhana'
  ];
  final songs=[
    "assets/audio/sankaraa.mp3",
    "assets/audio/dheere chalo.mp3",
    "assets/audio/zindagi ek safar.mp3"
  ];
  final pic=[
    "assets/images/baby.jpg",
    "assets/images/goodlife.webp",
    "assets/images/goodlife.webp"
  ];

  final ap=AssetsAudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Devotional Songs'),
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
                leading: CircleAvatar(
                  backgroundImage: AssetImage(pic[index]),
                ),
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


