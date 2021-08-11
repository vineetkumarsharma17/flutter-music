import 'package:flutter/material.dart';
class Bollywood extends StatelessWidget {
  final List song=[
    'a',
    'b'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bollywood Songs'),
      ),
      body: ListView.builder(
        itemCount: song.length,
          itemBuilder:(context,index){
          return ListTile(
            title: Text(song[index]),
          );
      }),
    );
  }
}

