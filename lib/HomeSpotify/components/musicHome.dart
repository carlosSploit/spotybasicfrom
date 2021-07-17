import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class musicHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    style: TextStyle(color: Colors.white, fontSize: 13),
                    textAlign: TextAlign.center,
                  ),
                )),
            Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    "ASKHDJASDHJASHDJKASHDJKASHDKJAD",
                    style: TextStyle(color: Color(0xff9e9e9e), fontSize: 10),
                    textAlign: TextAlign.center,
                  ),
                )),
          ],
        ),
        decoration: BoxDecoration(
          color: const Color(0xff000000),
        ));
  }
}

class painterCont extends CustomPainter {
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
        colors: [Colors.blueGrey, Colors.white10],
      ).createShader(Rect.fromCircle(
        center: new Offset((size.width / 2) + 30, size.height / 2),
        radius: 1,
      ))
      ..style = PaintingStyle.stroke;
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            new Rect.fromLTWH(0, 0, size.height, size.height),
            new Radius.circular(0)),
        p);
    //canvas.drawArc(new Rect.fromLTWH((size.width*0.5)-(11),(size.height*0.5)-((size.height/2.5)/2),(size.height/2.5),(size.height/2.5)),-math.pi / 2,math.pi,false,p2);
    //canvas.drawArc(new Rect.fromLTWH((size.width*0.5)-(x+11),(size.height*0.5)-((size.height/2)/2),(size.height/2),(size.height/2)),-math.pi / 2,math.pi,false,p2..strokeWidth = 40);
    //canvas.drawArc(new Rect.fromLTWH((size.width*0.5)-(11),(size.height*0.5)-((size.height/2.5)/2),(size.height/2.5),(size.height/2.5)),(-math.pi / 2)*-1,(math.pi)*-1,false,p2..color = Colors.white10);
    canvas.drawCircle(new Offset((size.width / 2) - 30, size.height / 2),
        ((size.height / 3)), p..color = Colors.white10);
    canvas.drawCircle(new Offset((size.width / 2) + 30, size.height / 2),
        ((size.height / 3)), p..color = Colors.white10);
    canvas.drawCircle(new Offset((size.width / 2) - 25, size.height / 2),
        ((size.height / 4)), p..color = Colors.white10);
    canvas.drawCircle(new Offset((size.width / 2) + 25, size.height / 2),
        ((size.height / 4)), p..color = Colors.white10);
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
