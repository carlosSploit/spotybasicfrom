import 'package:flutter/material.dart';
import 'package:primerapp/BrowsSpotify/components/buttonopSpoty.dart';
import 'package:primerapp/BrowsSpotify/components/GenereidButSpoty.dart';

class BrowsSview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Browsespoty();
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
                        Butoppoty("Charts", Icons.show_chart),
                        // ----------------New Releases-----------------
                        Butoppoty("New Releases", Icons.next_week_outlined),
                        // ----------------Videos-----------------
                        Butoppoty("Videos", Icons.ondemand_video),
                        // ----------------PodCast-----------------
                        Butoppoty("PodCast", Icons.online_prediction),
                        // ----------------Discover-----------------
                        Butoppoty("Discover", Icons.disc_full_outlined),
                        // ----------------Concerts-----------------
                        Butoppoty(
                            "Concerts", Icons.confirmation_number_outlined),
                      ],
                    ),
                    //*********************************Genres & Modds************************************
                    Column(
                      children: <Widget>[
                        //Title
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
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
                                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Geneoppoty("Hip-Hop", Icons.speaker_rounded,
                                        "https://www.visittheusa.mx/sites/default/files/styles/16_9_1280x720/public/images/hero_media_image/2018-03/e23f197d1fc1118afa9ddfcd21c3d85a.jpeg?itok=t8x0hM2i"),
                                    Geneoppoty("Rock", Icons.speaker_rounded,
                                        "https://www.futuro.cl/wp-content/uploads/2020/03/guns-n-roses-1987-promo-web-ok.jpg"),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Geneoppoty("Indie", Icons.speaker_rounded,
                                        "https://www.visittheusa.mx/sites/default/files/styles/16_9_1280x720/public/images/hero_media_image/2018-03/e23f197d1fc1118afa9ddfcd21c3d85a.jpeg?itok=t8x0hM2i"),
                                    Geneoppoty("Rock", Icons.speaker_rounded,
                                        "https://www.futuro.cl/wp-content/uploads/2020/03/guns-n-roses-1987-promo-web-ok.jpg"),
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
