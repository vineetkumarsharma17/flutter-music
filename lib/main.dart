import 'package:flutter/material.dart';
import 'package:music_bollywood/bollywood.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
final List _item=[
  Bollywood(),
  Bollywood(),
  Bollywood(),
  Bollywood(),
];
  int _currentState=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _item[_currentState],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentState,
          items:<BottomNavigationBarItem> [
            BottomNavigationBarItem(
                icon: Icon(Icons.music_note),
              label: "Bollywood",
                backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: "Hollywood",
              backgroundColor: Colors.orange,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: "Classical",
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: "Devotional",
            ),
          ],
          onTap: onClick,
        ),
      ),

    );
  }

  void onClick(int index){
    setState(() {
      _currentState=index;
      print(index);
    });
  }
}
// class Homepage extends StatelessWidget {
//   const Homepage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//     );
//   }
// }

