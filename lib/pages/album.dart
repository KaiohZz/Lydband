// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:lydband/models/Album/AlbumMusicaModel.dart";

class Album extends StatefulWidget {
  Album({super.key});

  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  List<AlbumMusicaModel> listaMusicas = [];

  void loadMusicas() {
    listaMusicas = AlbumMusicaModel.getMusicas();
  }

  @override
  Widget build(BuildContext context) {
    loadMusicas();

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
        cardAlbum(),
        musicasAlbum(),
      ]),
    );
  }

  Column musicasAlbum() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Músicas',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      fontSize: 24))),
          Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 5.0),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    cardMusica(0),
                    SizedBox(
                      height: 10,
                    ),
                    cardMusica(1),
                    SizedBox(
                      height: 10,
                    ),
                    cardMusica(2),
                    SizedBox(
                      height: 10,
                    ),
                    cardMusica(3),
                    SizedBox(
                      height: 10,
                    ),
                    cardMusica(4),
                    SizedBox(
                      height: 10,
                    ),
                    cardMusica(5),
                    SizedBox(
                      height: 10,
                    ),
                    cardMusica(6),
                    SizedBox(
                      height: 10,
                    ),
                    cardMusica(7),
                    SizedBox(
                      height: 10,
                    ),
                    cardMusica(8),
                    SizedBox(
                      height: 10,
                    ),
                    cardMusica(9),
                    SizedBox(
                      height: 10,
                    ),
                    cardMusica(10),
                    SizedBox(
                      height: 10,
                    ),
                    cardMusica(11),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
                ),
              )),
        ]);
  }

  Container cardMusica(int musicaPos) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25),
          blurRadius: 4,
          spreadRadius: 0,
          offset: Offset(0, 4),
        )
      ]),
      child: Row(children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(3), bottomLeft: Radius.circular(3)),
            child: Container(
              height: 40,
              width: 40,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 2.0, 0.0),
              color: Color(0xFF2E3A3E),
              child: Center(
                  child: Text(listaMusicas[musicaPos].index,
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inter',
                          fontSize: 20))),
            )),
        Container(
            height: 40,
            width: 280,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(5.0, 0.0, 2.0, 0.0),
            color: Color(0xFF405758),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(listaMusicas[musicaPos].nome,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Inter',
                      fontSize: 18)),
            )),
        ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(3), bottomRight: Radius.circular(3)),
            child: Container(
              height: 40,
              width: 55,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              color: Color(0xFF405758),
              child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        child: Container(
                          color: Color(0xFF212F34),
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 2.0),
                            child: Text(listaMusicas[musicaPos].nota,
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Inter',
                                    fontSize: 14)),
                          ),
                        ))),
              ),
            ))
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

  Container cardAlbum() {
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
                    child: Image.asset("assets/img/igor.jpeg")),
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
                              padding: EdgeInsets.fromLTRB(5.0, 4.0, 5.0, 2.0),
                              child: Text('Album',
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
                          Text('IGOR',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter',
                                  fontSize: 20)),
                          Text('Tyler, The Creator',
                              style: TextStyle(
                                  color: Color(0xFFBABABA),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter',
                                  fontSize: 12)),
                          Text('2019',
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
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            child: Column(
                              children: <Widget>[
                                Text('Músicas',
                                    style: TextStyle(
                                        color: Color(0xFFBABABA),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Inter',
                                        fontSize: 13)),
                                Text('12',
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
