import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:primerapp/RadioSpotify/view/RadioSview.dart';
import 'package:primerapp/HomeSpotify/view/HomeSview.dart';
import 'package:primerapp/SeachSpotify/view/SearchSview.dart';
import 'package:primerapp/BrowsSpotify/view/BrowsSview.dart';
import 'package:primerapp/ListVSpotify/view/ListSview.dart';

class InsideScreen extends StatefulWidget {
  //const InsideScreen({Key? key}) : super(key: key);

  @override
  insicontent createState() => insicontent();
}

class insicontent extends State<InsideScreen> {
  insicontent();

  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    HomeSview(),
    BrowsSview(),
    SearchSview(),
    RadioSview(),
    RadioSview(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Container de barra principal
      body: Column(
        children: <Widget>[
          //container de barra secundaria
          Expanded(
            child: ListSview(),
            //child: _widgetOptions.elementAt(_selectedIndex),
          ),
          Container(
              color: Color(0xff212121),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 10,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.cyanAccent,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Color(0xff484848)),
                      value: 50,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white,
                          size: 30,
                        ),
                        flex: 2,
                      ),
                      Expanded(
                          flex: 7,
                          child: Text(
                            "Sing About Me, I'm Dying Of Thirst",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                      Expanded(
                        flex: 2,
                        child: Icon(
                          Icons.play_circle_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color(0xff212121),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.open_in_browser),
            label: 'Browser',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_music_outlined),
            label: 'Library',
          ),
        ],
        //backgroundColor: Color(0xff212121),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        unselectedItemColor: Color(0xff484848),
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class ButtoMenu extends StatelessWidget {
  ButtoMenu();
  Widget build(BuildContext context) {}
}
