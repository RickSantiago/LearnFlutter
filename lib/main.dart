import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MeuPrimeiroStatelessWidget()));
}

class MeuPrimeiroStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext contexto) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Estado dos Widget"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MeuCard(
              titulo: new Text("Aprendendo Flutter!"),
              icone: new Icon(
                Icons.adb,
                color: Colors.greenAccent,
                size: 40.0,
              ),
            ),
            new MeuCard(
              titulo: new Text("Criando Cards"),
              icone: new Icon(
                Icons.account_balance,
                color: Colors.blueAccent,
                size: 40.0,
              ),
            ),
            new MeuCard(
              titulo: new Text("Alinhando Cards"),
              icone: new Icon(
                Icons.apps,
                color: Colors.deepOrange,
                size: 40.0,
              ),
            ),
            new MeuCard(
              titulo: new Text("Trabalhando com classes"),
              icone: new Icon(
                Icons.build,
                color: Colors.cyan,
                size: 40.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MeuCard extends StatelessWidget {
  MeuCard({this.titulo, this.icone});

  final Widget titulo;
  final Widget icone;

  @override
  Widget build(BuildContext contexto) {
    return new Container(
        padding: new EdgeInsets.only(bottom: 20.0),
        child: new Card(
          child: new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[this.titulo, this.icone],
            ),
          ),
        ));
  }
}
