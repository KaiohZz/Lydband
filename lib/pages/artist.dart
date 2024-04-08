// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

class Artist extends StatelessWidget {
  const Artist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212F34),
      appBar: objectBar(context),
      body: body(),
    );
  }

  SingleChildScrollView body() {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        cardSinger(),
        getAlbuns(),
        getSingles(),
      ]),
    );
  }

  Column getAlbuns() {
    return Column(children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Albuns',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      fontSize: 24))),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: Row(
                  children: <Widget>[
                    Material(
                      elevation: 10,
                      child: Container(
                        height: 80,
                        child: ClipRRect(
                          child: Image.asset("assets/img/bornpink.jpeg"),
                        ),
                      ),
                    ),
                    Material(
                      elevation: 5,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(10)),
                          color: Color(0xFF405758),
                        ),
                        height: 60,
                        width: 290,
                        child: Row(
                          children: [
                            Container(
                              width: 170,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  "BORN PINK",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color(0xFFE5E5E5),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            SvgPicture.asset("assets/icons/Estrelas.svg"),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  2.0, 0.0, 10.0, 0.0),
                              child: Text(
                                "  4,7",
                                style: TextStyle(
                                  color: Color(0xFFE5E5E5),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: Row(
                  children: <Widget>[
                    Material(
                      elevation: 10,
                      child: Container(
                        height: 80,
                        child: ClipRRect(
                          child: Image.asset("assets/img/thealbum.jpeg"),
                        ),
                      ),
                    ),
                    Material(
                      elevation: 5,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(10)),
                          color: Color(0xFF405758),
                        ),
                        height: 60,
                        width: 290,
                        child: Row(
                          children: [
                            Container(
                              width: 170,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  "THE ALBUM",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color(0xFFE5E5E5),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            SvgPicture.asset("assets/icons/Estrelas.svg"),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  2.0, 0.0, 10.0, 0.0),
                              child: Text(
                                "  4,7",
                                style: TextStyle(
                                  color: Color(0xFFE5E5E5),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: Row(
                  children: <Widget>[
                    Material(
                      elevation: 10,
                      child: Container(
                        height: 80,
                        child: ClipRRect(
                          child: Image.asset("assets/img/biya.jpeg"),
                        ),
                      ),
                    ),
                    Material(
                      elevation: 5,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(10)),
                          color: Color(0xFF405758),
                        ),
                        height: 60,
                        width: 290,
                        child: Row(
                          children: [
                            Container(
                              width: 170,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  "BLACKPINK IN YOUR AREA",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color(0xFFE5E5E5),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            SvgPicture.asset("assets/icons/Estrelas.svg"),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  2.0, 0.0, 10.0, 0.0),
                              child: Text(
                                "  4,7",
                                style: TextStyle(
                                  color: Color(0xFFE5E5E5),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ]);
  }

  Column getSingles() {
    return Column(children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Singles',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      fontSize: 24))),
          Row(children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(left: 7, right: 4),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color(0xFF405758),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          child: Image.asset("assets/img/thegirls.jpeg"),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "THE GIRLS",
                                style: TextStyle(
                                  color: Color(0xFFE5E5E5),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(left: 4, right: 0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color(0xFF405758),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          child: Image.asset("assets/img/icecream.jpeg"),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "ICE CREAM",
                                style: TextStyle(
                                  color: Color(0xFFE5E5E5),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ))
          ]),
          SizedBox(
            height: 10,
          ),
          Row(children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(left: 7, right: 4),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color(0xFF405758),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          child: Image.asset("assets/img/pinkvenom.jpeg"),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 15, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Pink Venom",
                                style: TextStyle(
                                  color: Color(0xFFE5E5E5),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(left: 4, right: 0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color(0xFF405758),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Row(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          child: Image.asset("assets/img/sourcream.jpeg"),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 15, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Sour Cream",
                                style: TextStyle(
                                  color: Color(0xFFE5E5E5),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                )),
            SizedBox(
              height: 100,
            )
          ]),
        ],
      )
    ]);
  }

  AppBar objectBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          margin: const EdgeInsets.all(5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset('assets/icons/arrow-left.svg',
              height: 50, width: 50),
        ),
      ),
    );
  }

  Container cardSinger() {
    return Container(
      width: 370,
      height: 214,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25),
          blurRadius: 4,
          spreadRadius: 0,
          offset: Offset(0, 4),
        )
      ]),
      child: Column(
        children: [
          Container(
            height: 132,
            decoration: BoxDecoration(
              color: Color(0xFF405758),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: <Widget>[
                Material(
                  color: Colors.transparent,
                  elevation: 5,
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/BlackpinkPT.jpeg'),
                    radius: 60,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                  child: Text('BLACKPINK',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                          fontSize: 20)),
                ),
                Spacer(),
                Column(
                  children: <Widget>[
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.transparent,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/img/spotify.png'),
                        radius: 20,
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    SizedBox(height: 47),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xFF657C7D)),
                        alignment: Alignment.bottomRight,
                        padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                        child: Text('Seguir',
                            style: TextStyle(
                                color: Color(0xFFE5E5E5),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Inter',
                                fontSize: 15)),
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ),
          Container(
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xFF657C7D),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                        color: Color(0xFF405758),
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Text('Popularidade',
                                    style: TextStyle(
                                        color: Color(0xFFBABABA),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Inter',
                                        fontSize: 13)),
                                Text('81/100',
                                    style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Inter',
                                        fontSize: 16)),
                              ],
                            ))),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                        color: Color(0xFF405758),
                        child: Padding(
                            padding:
                                EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                            child: Column(
                              children: <Widget>[
                                Text('Seguidores',
                                    style: TextStyle(
                                        color: Color(0xFFBABABA),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Inter',
                                        fontSize: 13)),
                                Text('47 M',
                                    style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Inter',
                                        fontSize: 16)),
                              ],
                            ))),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                        color: Color(0xFF405758),
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Text('Nota',
                                    style: TextStyle(
                                        color: Color(0xFFBABABA),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Inter',
                                        fontSize: 13)),
                                Row(
                                  children: <Widget>[
                                    SvgPicture.asset(
                                        "assets/icons/Estrelas.svg"),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(' 4,7',
                                        style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Inter',
                                            fontSize: 13)),
                                  ],
                                )
                              ],
                            ))),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
