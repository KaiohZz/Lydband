// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_svg/flutter_svg.dart";

class Musica extends StatefulWidget {
  Musica({super.key});

  @override
  State<Musica> createState() => _MusicaState();
}

class _MusicaState extends State<Musica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF577476),
        onPressed: () {},
        child: Icon(Icons.add),
        ),
      backgroundColor: Color.fromRGBO(33, 47, 52, 1),
      appBar: objectBar(),
      body: body(),
    );
  }

  SingleChildScrollView body() {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        cardMusica(),
        getArtistas(),
        getAlbum(),
        getAvaliacoes(),
      ]),
    );
  }

  AppBar objectBar() {
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

  Container cardMusica() {
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
                Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: Offset(0, 4),
                      )
                    ]),
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(2.0),
                    child: Image.asset("assets/img/ladygaga.jpeg")),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 5.0, 0.0, 0.0),
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Material(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xFF657C7D)),
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                              child: Text('Música',
                                  style: TextStyle(
                                      color: Color(0xFFE5E5E5),
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Inter',
                                      fontSize: 10)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Telephone',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter',
                                  fontSize: 20)),
                          Text('Lady Gaga',
                              style: TextStyle(
                                  color: Color(0xFFBABABA),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter',
                                  fontSize: 12)),
                          Text('2009',
                              style: TextStyle(
                                  color: Color(0xFFBABABA),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter',
                                  fontSize: 12)),
                        ]),
                  ),
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
                    SizedBox(height: 50),
                    Container(
                      width: 25,
                      height: 25,
                      child: SvgPicture.asset("assets/icons/Salvar.svg"),
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
                                Text('72/100',
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
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            child: Column(
                              children: <Widget>[
                                Text('Duração',
                                    style: TextStyle(
                                        color: Color(0xFFBABABA),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Inter',
                                        fontSize: 13)),
                                Text('3:42',
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

  Container getArtistas() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Artistas',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      fontSize: 24))),
          Container(
            alignment: Alignment.centerLeft,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 13.0, 0.0, 0.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5,
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(40)),
                          color: Color(0xFF405758),
                        ),
                        alignment: Alignment.centerLeft,
                        height: 40,
                        width: 360,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
                          child: Text('Lady Gaga',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter',
                                  fontSize: 20)),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5,
                    borderRadius: BorderRadius.circular(60),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/img/lgpp.jpeg'),
                      radius: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 13.0, 0.0, 0.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5,
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(40)),
                          color: Color(0xFF405758),
                        ),
                        alignment: Alignment.centerLeft,
                        height: 40,
                        width: 360,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
                          child: Text('Beyoncé',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter',
                                  fontSize: 20)),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5,
                    borderRadius: BorderRadius.circular(60),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/img/beyoncepp.jpeg'),
                      radius: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container getAlbum() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Álbum',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      fontSize: 24))),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[
                Material(
                  elevation: 10,
                  child: Container(
                    height: 80,
                    child: ClipRRect(
                      child: Image.asset("assets/img/ladygaga.jpeg"),
                    ),
                  ),
                ),
                Material(
                  elevation: 5,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(10)),
                      color: Color(0xFF405758),
                    ),
                    height: 60,
                    width: 290,
                    child: Row(
                      children: [
                        Container(
                          width: 170,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              "The Fame Monster",
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
                          padding:
                              const EdgeInsets.fromLTRB(2.0, 0.0, 10.0, 0.0),
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
        ],
      ),
    );
  }

  Container getAvaliacoes() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Avaliações',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      fontSize: 24))),
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18.0, 8.0, 0.0, 0.0),
                        child: Container(
                          height: 42,
                          width: 360,
                          decoration: BoxDecoration(
                              color: Color(0xFF2E3A3E),
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10))),
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  50.0, 4.0, 0.0, 4.0),
                              child: Row(
                                children: <Widget>[
                                  Text('oFanax',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Inter',
                                          fontSize: 24)),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "  4,9",
                                          style: TextStyle(
                                            color: Color(0xFFE5E5E5),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                          ),
                                        ),
                                        SvgPicture.asset(
                                            "assets/icons/Estrelas.svg"),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                    child: Material(
                      elevation: 5,
                      color: Colors.transparent,
                      child: Container(
                        width: 360,
                        decoration: BoxDecoration(
                            color: Color(0xFF405758),
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(10))),
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 15.0, 5.0, 10.0),
                          child: Text(
                              'A Lady Gaga tem um vocal deslumbrante! Essa música me passa uma vibe Sexta-Feira à noite nas minhas épocas de balada por volta de 2010. Sou extremamente fã dela desde PokerFace, Paparazzi e Bad Romance. Posso dizer com muita certeza que ela é a minha Diva Pop!!',
                              style: TextStyle(
                                  color: Color(0xFFDADADA),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter',
                                  fontSize: 12)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 5.0, 0.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 5,
                  borderRadius: BorderRadius.circular(60),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.transparent,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/img/neymar.png'),
                      radius: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18.0, 8.0, 0.0, 0.0),
                        child: Container(
                          height: 42,
                          width: 360,
                          decoration: BoxDecoration(
                              color: Color(0xFF2E3A3E),
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10))),
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  50.0, 4.0, 0.0, 4.0),
                              child: Row(
                                children: <Widget>[
                                  Text('CloakingBot05',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Inter',
                                          fontSize: 24)),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "  4,5",
                                          style: TextStyle(
                                            color: Color(0xFFE5E5E5),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                          ),
                                        ),
                                        SvgPicture.asset(
                                            "assets/icons/Estrelas.svg"),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                    child: Material(
                      elevation: 5,
                      color: Colors.transparent,
                      child: Container(
                        width: 360,
                        decoration: BoxDecoration(
                            color: Color(0xFF405758),
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(10))),
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 15.0, 5.0, 10.0),
                          child: Text(
                              'Po, a mixagem da música é bem legal com uma vibe eletrônica que eu curto muito e também possui um rítimo legal, o que traz uma dinâmica para musica em si. Além do mais, o refrão é chiclete o que fixa a musica na cabeça por muito tempo. A letra é legal mas para mim não tem nada de especial.',
                              style: TextStyle(
                                  color: Color(0xFFDADADA),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter',
                                  fontSize: 12)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 5.0, 0.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 5,
                  borderRadius: BorderRadius.circular(60),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.transparent,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/img/nader.jpg'),
                      radius: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
