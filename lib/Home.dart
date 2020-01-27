import 'package:flutter/material.dart';
import 'package:youtube/telas/biblioteca.dart';
import 'package:youtube/telas/emAlta.dart';
import 'package:youtube/telas/incricao.dart';
import 'package:youtube/telas/inicio.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indeceAtual = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> _telas = [
      Inicio(),
      Inscricao(),
      Biblioteca(),
      EmAlta(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/youtube.png",
          width: 98,
          height: 22,
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                print("Pressed video cam");
              },
              icon: Icon(Icons.videocam)),
          IconButton(
              onPressed: () {
                print("Pressed pesquisa");
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print("Pressed video cam");
              },
              icon: Icon(Icons.account_circle))
        ],
        iconTheme: IconThemeData(color: Colors.grey, opacity: 1),
      ),
      body: _telas[_indeceAtual],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indeceAtual,
          onTap: (indice) {
            setState(() {
              this._indeceAtual = indice;
            });
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              title: Text("inicio"),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text("Em alta"),
              icon: Icon(Icons.whatshot),
            ),
            BottomNavigationBarItem(
              title: Text("Biblioteca "),
              icon: Icon(Icons.whatshot),
            ),
          ]),
    );
  }
}
