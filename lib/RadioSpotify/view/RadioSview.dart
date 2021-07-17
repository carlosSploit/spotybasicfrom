import 'package:flutter/material.dart';
import 'package:primerapp/RadioSpotify/components/musicRadio.dart';

class RadioSview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RadioSpotify();
  }
}

class RadioSpotify extends StatelessWidget {
  RadioSpotify();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            //title de la interface
            Container(
              color: Color(0xff212121),
              child: Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  width: 140,
                  height: 70,
                  child: Center(
                    child: Text(
                      "Home",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xff000000),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    //*******************Recently Played***********************
                    Column(
                      children: <Widget>[
                        //Title
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                          child: Text(
                            "Recently Played",
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          ),
                        ),
                        //lIST DE PLAYED
                        Container(
                          padding: EdgeInsets.all(5),
                          height: 250,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              musicRadio(),
                              musicRadio(),
                              musicRadio(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    //*********************************Popular playlist************************************
                    Column(
                      children: <Widget>[
                        //Title
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                          child: Text(
                            "Popular Playlist",
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          ),
                        ),
                        //lIST DE PLAYED
                        Container(
                          padding: EdgeInsets.all(5),
                          height: 250,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              musicRadio(),
                              musicRadio(),
                              musicRadio(),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
