import 'package:flutter/material.dart';

class MusicVSpotify extends StatefulWidget {
  String namegrupe = "The Drums";
  String namesong = "Book Of Revelation";
  String infosong = "SHARED BY PAUL GUNSERBED 17/07/2021 2:48PM";

  IconData icon = Icons.show_chart;

  MusicVSpotify(this.namegrupe, this.namesong, this.infosong);

  @override
  MusicSpotify createState() => MusicSpotify();
}

class MusicSpotify extends State<MusicVSpotify> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 5, 10, 5),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              textDirection: TextDirection.ltr,
              children: <Widget>[
                Row(children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 1, 0, 2),
                    child: Text(
                      widget.namegrupe,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ]),
                Row(children: <Widget>[
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 1, 0, 2),
                      child: Text(widget.namesong,
                          style: TextStyle(color: Colors.grey, fontSize: 14))),
                ]),
                Row(children: <Widget>[
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 1, 0, 2),
                      child: Text(widget.infosong,
                          style: TextStyle(color: Colors.grey, fontSize: 10))),
                ]),
              ],
            ),
          ),
          Icon(
            Icons.more_vert_sharp,
            color: Color(0xff484848),
            size: 30,
          ),
        ],
      ),
    );
  }
}
