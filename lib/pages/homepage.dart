import 'package:flutter/material.dart';
import 'package:lydband/pages/home.dart';
import 'package:lydband/pages/perfil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indicePagina = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: indicePagina);
  }

  setPagina (pagina) {
    setState(() {
      indicePagina = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: [
          Home(),
          Perfil(),
        ],
        onPageChanged: setPagina,
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        selectedItemColor: const Color(0xffffffff),
        backgroundColor: const Color(0xFF405758),
        currentIndex: indicePagina,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Início"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil"
          )
        ],
        onTap: (pagina) {
          pc.animateToPage(pagina, duration: const Duration(milliseconds: 400), curve: Curves.ease);
        },
      ),
    );
  }
}