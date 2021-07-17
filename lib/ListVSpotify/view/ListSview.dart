import 'package:flutter/material.dart';
import 'package:primerapp/ListVSpotify/components/MusicVSpotify.dart';

class ListSview extends StatefulWidget {
  @override
  Listpoty createState() => Listpoty();
}

class Listpoty extends State<ListSview> {
  Listpoty();
  bool isSwitched = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.green[900], Colors.black],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              stops: [0.0, 0.5],
              tileMode: TileMode.repeated),
        ),
        child: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(15, 30, 15, 0),
                color: Colors.transparent,
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey[400],
                      size: 20,
                    ),
                    Expanded(
                      child: Text('', textAlign: TextAlign.center),
                    ),
                    Icon(
                      Icons.more_vert_sharp,
                      color: Colors.grey[400],
                      size: 20,
                    ),
                  ],
                )),
            Expanded(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    //botones de interaccion
                    Column(
                      children: <Widget>[
                        //*********************************************************/
                        //----------------Encabezado de imagen---------------------
                        //*********************************************************/
                        Container(
                            child: Center(
                          child: Column(
                            children: <Widget>[
                              Container(
                                  width: 150.0,
                                  height: 150.0,
                                  decoration: new BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      image: new DecorationImage(
                                          fit: BoxFit.fill,
                                          image: new NetworkImage(
                                              "https://i.imgur.com/BoN9kdC.png")))),
                              Container(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    "Shared with you",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  )),
                              Container(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    "from chris, semith jen & 32 More Contects",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ))
                            ],
                          ),
                        )),
                        //*********************************************************/
                        //******************** BUTTON REPRODUC ********************/
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                            child: Center(
                              child: Container(
                                width: 250,
                                height: 50,
                                margin: EdgeInsets.all(10),
                                child: Center(
                                  child: Text(
                                    "SHUFFLE PLAY",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: new BorderRadius.circular(50.0),
                                  color: Colors.green,
                                ),
                              ),
                            )),
                        //********************************************************/
                        //******************** BOTTON DOWLOAD ********************/
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 5, 2, 2),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Download",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                              Switch(
                                value: false,
                                onChanged: (bool state) {
                                  print(state);
                                },
                                activeTrackColor: Colors.lightGreenAccent,
                                activeColor: Colors.green,
                                inactiveTrackColor: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        //********************************************************/
                        //******************** Itens Song ********************/
                        MusicVSpotify("The Drums", "Book Of Revelation",
                            "SHARED BY PAUL GUNSERBED 17/07/2021 2:48PM"),
                        MusicVSpotify("The Drums", "Book Of Revelation",
                            "SHARED BY PAUL GUNSERBED 17/07/2021 2:48PM"),
                        MusicVSpotify("The Drums", "Book Of Revelation",
                            "SHARED BY PAUL GUNSERBED 17/07/2021 2:48PM"),
                        MusicVSpotify("The Drums", "Book Of Revelation",
                            "SHARED BY PAUL GUNSERBED 17/07/2021 2:48PM"),
                        MusicVSpotify("The Drums", "Book Of Revelation",
                            "SHARED BY PAUL GUNSERBED 17/07/2021 2:48PM"),
                        //********************************************************/
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
