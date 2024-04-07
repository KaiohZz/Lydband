import 'package:flutter/material.dart';
// import 'package:lydband/models/avaliacoes_model.dart';
import 'package:lydband/models/song_model.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  List<SongModel> songs = [];
  //List<AvalModel> aval = [];

  void _getSongs() {
    songs = SongModel.getSongs();
  }

  /*
  void _getAval() {
    aval = AvalModel.getAval();
  }*/

  @override
  void initState() {
    _getSongs();
    //_getAval();
  }
  
  @override
  Widget build(BuildContext context) {

    _getSongs();

    return Scaffold(
      backgroundColor: const Color(0xff212F34),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          redlistTitle(),
          const SizedBox(height: 10),
          redlistBody(),
          const SizedBox(height: 40),
          avaliacoesTitle(),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              "{EM DESENVOLVIMENTO :/}", 
              style: TextStyle(
                color: Color(0xffff5555),
                fontSize: 20
              ),
            )
            
            /*
            child: ListView.separated(
              itemCount: aval.length,
              scrollDirection: Axis.vertical,
              separatorBuilder: (content, index) => SizedBox(height: 50), 
              itemBuilder: (Content, Index) {

              }, 
            ),*/
          )
        ]
      ),
    );
  }

  Container avaliacoesTitle() {
    return Container(
          padding: const EdgeInsets.only(left: 20),
          child: const Text(
            'Avaliações',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600
            ),
          ),
        );
  }

  Container redlistBody() {
    return Container(
          height: 190,
          color: const Color(0xff212F34),
          child: ListView.separated (
              itemCount: songs.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(
                left: 20,
                right: 20
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 25,),
              itemBuilder: (Content, Index) {
                return Container(
                  child: Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Image.asset(songs[Index].imagePath),
                        width: 150,
                      ),
                      
                      Text(
                        songs[Index].title,
                        style: TextStyle(
                          color: Color(0xFFE5E5E5),
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),
                      ),

                      Text(
                        songs[Index].singer,
                        style: TextStyle(
                          color: Color(0xFFE5E5E5),
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  )
                );
                
              }
            ),
          );
  }

  Padding redlistTitle() {
    return const Padding( 
          padding: EdgeInsets.only(left: 20),
          child: Text(
              'Redlist',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w600
              ),
            ),
        );
  }
}