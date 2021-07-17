import 'package:flutter/material.dart';

class Geneoppoty extends StatefulWidget {
  String label = "";
  IconData icon = Icons.show_chart;
  String uriBack;
  Geneoppoty(this.label, this.icon, this.uriBack);

  @override
  Generopspoty createState() => Generopspoty();
}

class Generopspoty extends State<Geneoppoty> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
          color: const Color(0xff000000),
          image: DecorationImage(
            image: NetworkImage(widget.uriBack),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black38, BlendMode.colorBurn),
          )),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              widget.icon,
              color: Colors.white,
              size: 100,
            ),
            Text(
              widget.label,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
