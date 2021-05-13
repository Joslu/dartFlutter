import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LayoutBuilder'),
        ),
        body: SafeArea(
          child: ColumnasContenido(),
        ));
  }
}

class ColumnasContenido extends StatelessWidget {
  final children = [
    Expanded(child: Rectangulo()),
    Expanded(child: Rectangulo()),
    Expanded(child: Rectangulo()),
    Expanded(child: Rectangulo()),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return (constraints.maxWidth < 600)
          ? Column(children: children)
          : Row(children: children);
    });
  }
}

class Rectangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(color: Colors.red),
    );
  }
}
