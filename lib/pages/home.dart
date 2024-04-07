import 'package:lydband/models/AlbumModel.dart';
import 'package:lydband/models/MusicaModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<albumModel> albunsModels = [];
  List<musicaModel> musicasModels = [];
  bool _ativo = false;

  void _loadResources() {
    albunsModels = albumModel.getAlbunsModels();
    musicasModels = musicaModel.getMusicaModels();
  }

  @override
  Widget build(BuildContext context) {
    _loadResources();
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      backgroundColor: Color(0xFF212F34),
      appBar: appBar(),
      drawer: drawer(),
      body: body(),
    );
  }

  SingleChildScrollView body() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30,),
          _albunsRecomendados(),
          const SizedBox(height: 39,),
          _destaques(),
          const SizedBox(height: 55,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              musicasTitulo(),
              const SizedBox(height: 9,),
              musicasBody()
            ],
          ),
        ],
      ),
    );
  }

  Container musicasBody() {
    return Container(
              height: 179,
              //color: Colors.lightBlue,
              child: ListView.separated(
                  itemCount: albunsModels.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 15,
                      ),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 146,
                      //decoration: BoxDecoration(color: Colors.blue),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 145,
                            height: 145,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 4,
                                spreadRadius: 0,
                                offset: Offset(0, 4),
                              )
                            ]),
                            child:
                                Image.asset(musicasModels[index].pathImagem),
                          ),
                          Text(
                            musicasModels[index].nome,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color(0xFFE5E5E5),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            musicasModels[index].artista,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color(0xFFBABABA),
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    );
                  }),
            );
  }

  Padding musicasTitulo() {
    return Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Músicas populares",
                style: TextStyle(
                    color: Color(0xFFE5E5E5),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            );
  }

  Column drawer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: 208,
            color: Color(0xFF2E3A3E),
            child: Column(
              children: [
                Container(
                  height: 142,
                  width: 208,
                  //color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 21,
                      ),
                      Container(
                          width: 71,
                          height: 71,
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 4,
                              spreadRadius: 0,
                              offset: Offset(0, 4),
                            )
                          ]),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/img/Usuario.jpg"),
                            //backgroundColor: Colors.blue,
                            )
                            
                          ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "CloakingBot05",
                        style: TextStyle(
                            color: Color(0xFFBABABA),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Divider(
                        color: Color(0xFF405758),
                        thickness: 1,
                        indent: 11,
                        endIndent: 11,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    height: 158,
                    //color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              child: SvgPicture.asset(
                                  "assets/icons/Configuracao.svg"),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Configurações",
                              style: TextStyle(
                                  color: Color(0xFFBABABA),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              child: SvgPicture.asset("assets/icons/Sino.svg"),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Notificações",
                              style: TextStyle(
                                  color: Color(0xFFBABABA),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              child:
                                SvgPicture.asset("assets/icons/Salvar.svg"),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Bookmark",
                              style: TextStyle(
                                  color: Color(0xFFBABABA),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    //height: 446,
                    height: 321),
                Container(
                  child: Text(
                    "Versão 0.0.1",
                    style: TextStyle(
                        color: Color(0xFF577476),
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Column _destaques() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        destaquesTitulo(),
        const SizedBox(height: 5,),
        destaquesBody()
      ],
    );
  }

  Padding destaquesBody() {
    return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Container(
          //color: Colors.pink,
          height: 120,
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
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //height: 120,
                //width: 140,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  child: Image.asset("assets/img/DT.jpeg"),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 34,
                    ),
                    Text(
                      "Bewitched",
                      style: TextStyle(
                        color: Color(0xFFE5E5E5),
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "Laufey",
                      style: TextStyle(
                        height: 0.5,
                        color: Color(0xFFBABABA),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      children: [
                        Container(
                          child:
                              SvgPicture.asset("assets/icons/Estrelas.svg"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "4.7",
                          style: TextStyle(
                            color: Color(0xFFBABABA),
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 108,
                        ),
                        Container(
                          child: SvgPicture.asset("assets/icons/Salvar.svg"),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }

  Padding destaquesTitulo() {
    return Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          "Destaque",
          style: TextStyle(
              color: Color(0xFFE5E5E5),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      );
  }

  Column _albunsRecomendados() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        albunsTitulo(),
        const SizedBox(height: 9,),
        albunsBody()
      ],
    );
  }

  Container albunsBody() {
    return Container(
        height: 179,
        //color: Colors.lightBlue,
        child: ListView.separated(
            itemCount: albunsModels.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16, right: 16),
            separatorBuilder: (context, index) => SizedBox(
                  width: 15,
                ),
            itemBuilder: (context, index) {
              return Container(
                width: 146,
                //decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 145,
                      height: 145,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                        )
                      ]),
                      child: Image.asset(albunsModels[index].pathImagem),
                    ),
                    Text(
                      albunsModels[index].nome,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color(0xFFE5E5E5),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      albunsModels[index].artista,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color(0xFFBABABA),
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              );
            }),
      );
  }

  Padding albunsTitulo() {
    return Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          "Álbuns Recomendados",
          style: TextStyle(
              color: Color(0xFFE5E5E5),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Color(0xFF212F34),
      leading: Builder(builder: (context) {
        return GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: opcoes(),
        );
      }),
      actions: [
        GestureDetector(
          onTap: () {
            setState(() {
              _ativo = !_ativo;
            });
          },
          child: AnimatedContainer(
              duration: Duration(milliseconds: 512),
              margin: EdgeInsets.all(15),
              alignment: Alignment.center,
              width: _ativo ? 355 : 40,
              height: 30,
              decoration: _ativo
                  ? BoxDecoration(
                      color: const Color(0xFF405758),
                      borderRadius: BorderRadius.circular(20),
                      //shape: BoxShape.circle,
                      boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: const Offset(0, 4),
                          )
                        ])
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      //shape: BoxShape.circle,
                    ),
              //height: 100,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                          //alignment: Alignment.center,
                          child: _ativo
                              ? TextField(
                                  onSubmitted: (value) => Navigator.pushNamed(context, '/artistas'),
                                  textInputAction: TextInputAction.go,
                                  maxLines: 1,
                                  style: const TextStyle(
                                      color: Color(0xFFE5E5E5), fontSize: 16),
                                  decoration: const InputDecoration(
                                      hintText: "Pesquisar",
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(13)
                                    ),
                                )
                              : null)),
                  _ativo
                      ? Padding(
                          padding: const EdgeInsets.all(5),
                          child: SvgPicture.asset(
                            "assets/icons/Pesquisar2.svg",
                            width: 25,
                            height: 25,
                          ),
                        )
                      : SvgPicture.asset(
                          "assets/icons/Pesquisar.svg",
                          width: 30,
                          height: 30,
                        ),
                ],
              )
              //decoration: Padding(lef)
              //decoration: BoxDecoration(color: Colors.black),
              ),
        ),
      ],
    );
  }

  Container opcoes() {
    return Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: _ativo
              ? null
              : SvgPicture.asset(
                  "assets/icons/Opcoes.svg",
                  width: 30,
                  height: 30,
                ),
          //decoration: Padding(lef)
          //decoration: BoxDecoration(color: Colors.black),
        );
  }
}
