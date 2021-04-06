import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Container de barra principal
        body: Column(
      children: <Widget>[
        //container de barra secundaria
            Expanded(
                child: RadioSpotify(),
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
        Container(
          color: Color(0xff212121),
          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 30,
                    ),
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.open_in_browser,
                      color: Color(0xff484848),
                      size: 30,
                    ),
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  ),
                  Text(
                    "Browser",
                    style: TextStyle(color: Color(0xff484848)),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.search,
                      color: Color(0xff484848),
                      size: 30,
                    ),
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  ),
                  Text(
                    "Search",
                    style: TextStyle(color: Color(0xff484848)),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.radio,
                      color: Color(0xff484848),
                      size: 30,
                    ),
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  ),
                  Text(
                    "Radio",
                    style: TextStyle(color: Color(0xff484848)),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.my_library_music_outlined,
                      color: Color(0xff484848),
                      size: 30,
                    ),
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  ),
                  Text(
                    "Library",
                    style: TextStyle(color: Color(0xff484848)),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

class ButtoMenu extends StatelessWidget {
    ButtoMenu();
    Widget build(BuildContext context){
        
    }
}

class homespoty extends StatelessWidget {
  homespoty();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
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
                          padding: EdgeInsets.fromLTRB(0,5, 0, 10),
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
                              Container(
                                  padding: EdgeInsets.all(10),
                                  height: 250,
                                  width: 180,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 10,
                                        child: Image.network(
                                          "https://rolandoradio.files.wordpress.com/2020/03/clairo-2019-1-1068x1602-1.jpg?w=1068&h=768&crop=1",
                                          height: 500,
                                          width: 500,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Color(0xff9e9e9e),
                                                  fontSize: 10),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff000000),
                                  )),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  height: 250,
                                  width: 180,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 10,
                                        child: Image.network(
                                          "https://rolandoradio.files.wordpress.com/2020/03/clairo-2019-1-1068x1602-1.jpg?w=1068&h=768&crop=1",
                                          height: 500,
                                          width: 500,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Color(0xff9e9e9e),
                                                  fontSize: 10),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff000000),
                                  )),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  height: 250,
                                  width: 180,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 10,
                                        child: Image.network(
                                          "https://rolandoradio.files.wordpress.com/2020/03/clairo-2019-1-1068x1602-1.jpg?w=1068&h=768&crop=1",
                                          height: 500,
                                          width: 500,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Color(0xff9e9e9e),
                                                  fontSize: 10),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff000000),
                                  )),
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
                          padding: EdgeInsets.fromLTRB(0,5, 0, 10),
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
                              Container(
                                  padding: EdgeInsets.all(10),
                                  height: 250,
                                  width: 180,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 10,
                                        child: Image.network(
                                          "https://rolandoradio.files.wordpress.com/2020/03/clairo-2019-1-1068x1602-1.jpg?w=1068&h=768&crop=1",
                                          height: 500,
                                          width: 500,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Color(0xff9e9e9e),
                                                  fontSize: 10),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff000000),
                                  )),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  height: 250,
                                  width: 180,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 10,
                                        child: Image.network(
                                          "https://rolandoradio.files.wordpress.com/2020/03/clairo-2019-1-1068x1602-1.jpg?w=1068&h=768&crop=1",
                                          height: 500,
                                          width: 500,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Color(0xff9e9e9e),
                                                  fontSize: 10),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff000000),
                                  )),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  height: 250,
                                  width: 180,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 10,
                                        child: Image.network(
                                          "https://rolandoradio.files.wordpress.com/2020/03/clairo-2019-1-1068x1602-1.jpg?w=1068&h=768&crop=1",
                                          height: 500,
                                          width: 500,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Color(0xff9e9e9e),
                                                  fontSize: 10),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff000000),
                                  )),
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

class Browsespoty extends StatelessWidget {
  Browsespoty();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xff212121),
              child: Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  width: 140,
                  height: 70,
                  child: Center(
                    child: Text(
                      "Brownse",
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
                    //botones de interaccion
                    Column(
                      children: <Widget>[
                        //----------------charts---------------------
                        Container(
                          padding: EdgeInsets.fromLTRB(0,0,0,5),
                          child:
                          Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(10,0,10,0),
                                  child:Icon(
                                    Icons.show_chart,
                                    color: Color(0xff484848),
                                    size: 30,
                                  ),
                                ),
                                Text("Charts",style: TextStyle(color: Colors.white,fontSize: 15),),
                              ],
                          ),
                        ),
                        // ----------------New Releases-----------------
                        Container(
                          padding: EdgeInsets.fromLTRB(0,5,0,5),
                          child:
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(10,0,10,0),
                                child:Icon(
                                  Icons.next_week_outlined,
                                  color: Color(0xff484848),
                                  size: 30,
                                ),
                              ),
                              Text("New Releases",style: TextStyle(color: Colors.white,fontSize: 15),),
                            ],
                          ),
                        ),
                        // ----------------Videos-----------------
                        Container(
                          padding: EdgeInsets.fromLTRB(0,5,0,5),
                          child:
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(10,0,10,0),
                                child:Icon(
                                  Icons.ondemand_video,
                                  color: Color(0xff484848),
                                  size: 30,
                                ),
                              ),
                              Text("Videos",style: TextStyle(color: Colors.white,fontSize: 15),),
                            ],
                          ),
                        ),
                        // ----------------PodCast-----------------
                        Container(
                          padding: EdgeInsets.fromLTRB(0,5,0,5),
                          child:
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(10,0,10,0),
                                child:Icon(
                                  Icons.online_prediction,
                                  color: Color(0xff484848),
                                  size: 30,
                                ),
                              ),
                              Text("PodCast",style: TextStyle(color: Colors.white,fontSize: 15),),
                            ],
                          ),
                        ),
                        // ----------------Discover-----------------
                        Container(
                          padding: EdgeInsets.fromLTRB(0,5,0,5),
                          child:
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(10,0,10,0),
                                child:Icon(
                                  Icons.disc_full_outlined,
                                  color: Color(0xff484848),
                                  size: 30,
                                ),
                              ),
                              Text("Discover",style: TextStyle(color: Colors.white,fontSize: 15),),
                            ],
                          ),
                        ),
                        // ----------------Concerts-----------------
                        Container(
                          padding: EdgeInsets.fromLTRB(0,5,0,5),
                          child:
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(10,0,10,0),
                                child:Icon(
                                  Icons.confirmation_number_outlined,
                                  color: Color(0xff484848),
                                  size: 30,
                                ),
                              ),
                              Text("Concerts",style: TextStyle(color: Colors.white,fontSize: 15),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    //*********************************Genres & Modds************************************
                    Column(
                      children: <Widget>[
                        //Title
                        Container(
                          padding: EdgeInsets.fromLTRB(0,5, 0, 10),
                          child: Text(
                            "Genres & Modds",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        //lIST DE Genered
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(0,15,0,0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Container(
                                      height: 180,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff000000),
                                          image: DecorationImage(
                                            image: NetworkImage("https://rolandoradio.files.wordpress.com/2020/03/clairo-2019-1-1068x1602-1.jpg?w=1068&h=768&crop=1"),
                                            fit: BoxFit.cover,
                                            colorFilter: ColorFilter.mode(Colors.black38, BlendMode.colorBurn),
                                          )
                                      ),
                                      child:
                                      Center(
                                        child:
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.volume_down_outlined,
                                              color: Colors.white,
                                              size: 100,
                                            ),
                                            Text("Amplify:Women",style: TextStyle(color: Colors.white),)
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 180,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff000000),
                                          image: DecorationImage(
                                            image: NetworkImage("https://www.visittheusa.mx/sites/default/files/styles/16_9_1280x720/public/images/hero_media_image/2018-03/e23f197d1fc1118afa9ddfcd21c3d85a.jpeg?itok=t8x0hM2i"),
                                            fit: BoxFit.cover,
                                            colorFilter: ColorFilter.mode(Colors.black38, BlendMode.colorBurn),
                                          )
                                      ),
                                      child:
                                      Center(
                                        child:
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.speaker_rounded,
                                              color: Colors.white,
                                              size: 100,
                                            ),
                                            Text("Hip-Hop",style: TextStyle(color: Colors.white),)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0,15,0,0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      height: 180,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff000000),
                                          image: DecorationImage(
                                            image: NetworkImage("https://www.futuro.cl/wp-content/uploads/2020/03/guns-n-roses-1987-promo-web-ok.jpg"),
                                            fit: BoxFit.cover,
                                            colorFilter: ColorFilter.mode(Colors.black38, BlendMode.colorBurn),
                                          )
                                      ),
                                      child:
                                      Center(
                                        child:
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.speaker_rounded,
                                              color: Colors.white,
                                              size: 100,
                                            ),
                                            Text("Rock",style: TextStyle(color: Colors.white),)
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 180,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff000000),
                                          image: DecorationImage(
                                            image: NetworkImage("https://www.visittheusa.mx/sites/default/files/styles/16_9_1280x720/public/images/hero_media_image/2018-03/e23f197d1fc1118afa9ddfcd21c3d85a.jpeg?itok=t8x0hM2i"),
                                            fit: BoxFit.cover,
                                            colorFilter: ColorFilter.mode(Colors.black38, BlendMode.colorBurn),
                                          )
                                      ),
                                      child:
                                      Center(
                                        child:
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.speaker_rounded,
                                              color: Colors.white,
                                              size: 100,
                                            ),
                                            Text("Indie",style: TextStyle(color: Colors.white),)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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


class Searchspoty extends StatelessWidget {
  Searchspoty();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xff000000),
              child: Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                    height: 90,
                    child: Center(
                      child:
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff484848),
                          borderRadius:BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 8,
                              child:Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  cursorColor: Colors.white,

                                  style: TextStyle(backgroundColor: Color(0xff484848),color: Colors.white),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search',
                                    hintStyle: TextStyle(color: Colors.white),
                                    hoverColor: Colors.white,
                                    focusColor: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child:Center(
                                child:Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ),
            Expanded(
              child: Container(
                color: Color(0xff000000),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 100,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0,0,0,5),
                        child: Text("Search Spotify",style: TextStyle(color: Colors.white,fontSize: 18),),
                      ),
                      Text("find your favorite music , videos and podcast",style: TextStyle(color: Colors.white,fontSize: 13),)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RadioSpotify extends StatelessWidget {
  RadioSpotify();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
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
                          padding: EdgeInsets.fromLTRB(0,5, 0, 10),
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
                              Container(
                                  padding: EdgeInsets.all(10),
                                  height: 250,
                                  width: 180,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 10,
                                        child: Container(
                                          child: CustomPaint(
                                            painter: painterCont(),
                                            child: Center(
                                              child: Image.network(
                                                "https://rolandoradio.files.wordpress.com/2020/03/clairo-2019-1-1068x1602-1.jpg?w=1068&h=768&crop=1",
                                                height: 80,
                                                width: 80,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        )
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Color(0xff9e9e9e),
                                                  fontSize: 10),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff000000),
                                  )
                              ),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  height: 250,
                                  width: 180,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 10,
                                        child: Image.network(
                                          "https://rolandoradio.files.wordpress.com/2020/03/clairo-2019-1-1068x1602-1.jpg?w=1068&h=768&crop=1",
                                          height: 500,
                                          width: 500,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Color(0xff9e9e9e),
                                                  fontSize: 10),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff000000),
                                  )),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  height: 250,
                                  width: 180,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 10,
                                        child: Image.network(
                                          "https://rolandoradio.files.wordpress.com/2020/03/clairo-2019-1-1068x1602-1.jpg?w=1068&h=768&crop=1",
                                          height: 500,
                                          width: 500,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Color(0xff9e9e9e),
                                                  fontSize: 10),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff000000),
                                  )),
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
                          padding: EdgeInsets.fromLTRB(0,5, 0, 10),
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
                              Container(
                                  padding: EdgeInsets.all(10),
                                  height: 250,
                                  width: 180,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 10,
                                        child: Image.network(
                                          "https://rolandoradio.files.wordpress.com/2020/03/clairo-2019-1-1068x1602-1.jpg?w=1068&h=768&crop=1",
                                          height: 500,
                                          width: 500,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Color(0xff9e9e9e),
                                                  fontSize: 10),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff000000),
                                  )),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  height: 250,
                                  width: 180,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 10,
                                        child: Image.network(
                                          "https://rolandoradio.files.wordpress.com/2020/03/clairo-2019-1-1068x1602-1.jpg?w=1068&h=768&crop=1",
                                          height: 500,
                                          width: 500,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Color(0xff9e9e9e),
                                                  fontSize: 10),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff000000),
                                  )),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  height: 250,
                                  width: 180,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 10,
                                        child: Image.network(
                                          "https://rolandoradio.files.wordpress.com/2020/03/clairo-2019-1-1068x1602-1.jpg?w=1068&h=768&crop=1",
                                          height: 500,
                                          width: 500,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                      Expanded(
                                          flex: 2,
                                          child: Center(
                                            child: Text(
                                              "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                                              style: TextStyle(
                                                  color: Color(0xff9e9e9e),
                                                  fontSize: 10),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff000000),
                                  )),
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

class painterCont extends CustomPainter{
  painterCont({
    this.image,
  });

  ui.Image image;
  
  @override
  void paint(Canvas canvas, Size size) {
     final Path path = new Path();
     final int x = 11;
     final Paint p = new Paint()
         ..color = Colors.blueGrey
         ..style = PaintingStyle.fill
         ..strokeWidth = 4;
     final Paint p2 = new Paint()
       ..color = Colors.blueGrey
       ..strokeWidth = 20
       ..strokeJoin = StrokeJoin.round
       ..strokeMiterLimit = 30
       ..colorFilter = ColorFilter.linearToSrgbGamma()
       ..shader = RadialGradient(
         colors: [
           Colors.blueGrey,
           Colors.white10
         ],
       ).createShader(
           Rect.fromCircle(
             center: new Offset((size.width/2)+30, size.height/2),
             radius: 1,
           )
       )
       ..style = PaintingStyle.stroke;
     canvas.drawRRect(RRect.fromRectAndRadius(new Rect.fromLTWH(0,0,size.height,size.height),new Radius.circular(0)),p);
     //canvas.drawArc(new Rect.fromLTWH((size.width*0.5)-(11),(size.height*0.5)-((size.height/2.5)/2),(size.height/2.5),(size.height/2.5)),-math.pi / 2,math.pi,false,p2);
     //canvas.drawArc(new Rect.fromLTWH((size.width*0.5)-(x+11),(size.height*0.5)-((size.height/2)/2),(size.height/2),(size.height/2)),-math.pi / 2,math.pi,false,p2..strokeWidth = 40);
     //canvas.drawArc(new Rect.fromLTWH((size.width*0.5)-(11),(size.height*0.5)-((size.height/2.5)/2),(size.height/2.5),(size.height/2.5)),(-math.pi / 2)*-1,(math.pi)*-1,false,p2..color = Colors.white10);
    canvas.drawCircle(new Offset((size.width/2)-30, size.height/2),((size.height/3)),p..color = Colors.white10);
    canvas.drawCircle(new Offset((size.width/2)+30, size.height/2),((size.height/3)),p..color = Colors.white10);
    canvas.drawCircle(new Offset((size.width/2)-25, size.height/2),((size.height/4)),p..color = Colors.white10);
    canvas.drawCircle(new Offset((size.width/2)+25, size.height/2),((size.height/4)),p..color = Colors.white10);
    //canvas.drawImage(), new Offset(size.width/2,size.height/2), p);
     //image.toByteData(
       //format: ImageByteFormat.png
     //);
     //canvas.drawImage(image,new Offset(size.width/2,size.height/2), p);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
      return true;
  }

}


