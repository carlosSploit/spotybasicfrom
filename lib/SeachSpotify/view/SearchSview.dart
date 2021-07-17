import 'package:flutter/material.dart';

class SearchSview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Searchspoty();
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
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff484848),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 8,
                              child: Center(
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  cursorColor: Colors.white,
                                  style: TextStyle(
                                      backgroundColor: Color(0xff484848),
                                      color: Colors.white),
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
                              child: Center(
                                child: Icon(
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
                )),
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
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Text(
                          "Search Spotify",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Text(
                        "find your favorite music , videos and podcast",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
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
