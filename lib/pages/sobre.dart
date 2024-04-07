import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(27),
        decoration: const BoxDecoration(
          color: Color(0xFF212F34),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text('Sobre o Lydband',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50)
            ),
            SizedBox(height: 30),
            Text('A aplicação consiste em ser um portal para centralizar a crítica de músicas, utilizando das notas e comentários dos usuários para realizar sua classificação e categorização, exprimindo um ponto de vista mais popular',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)
            ),
          ],
        ),
      ),
    );
  }
}
