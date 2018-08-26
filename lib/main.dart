import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(home: new MyStatelessWidget()),
  );
}

class MyStatelessWidget extends StatelessWidget {
  // Se não especificarmos um construtor,
  // o Dart providenciará um para nós

  final cardList = <Widget>[
    new MyCard(
      title: new Text(
        "Flutter é amor",
        style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
      icon: new Icon(Icons.favorite, color: Colors.pink, size: 40.0),
    ),
    new MyCard(
      title: new Text(
        "Flutter é vida",
        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
      icon: new Icon(Icons.wb_sunny, color: Colors.amber, size: 40.0),
    ),
    new MyCard(
      title: new Text(
        "Hora de aprender",
        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
      icon: new Icon(Icons.local_library, color: Colors.blue, size: 40.0),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateless Widget"),
        backgroundColor: Colors.red,
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: cardList,
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  // Aqui vou criar meu construtor
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.only(bottom: 20.0),
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              this.title,
              this.icon,
            ],
          ),
        ),
      ),
    );
  }
}
