import 'package:flutter/material.dart';

class Butoppoty extends StatefulWidget {
  String label = "";
  IconData icon = Icons.show_chart;
  Butoppoty(this.label, this.icon);

  @override
  Buttonopspoty createState() => Buttonopspoty();
}

class Buttonopspoty extends State<Butoppoty> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Icon(
              widget.icon,
              color: Color(0xff484848),
              size: 30,
            ),
          ),
          Text(
            widget.label,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
