import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerView extends StatefulWidget {
  AnimatedContainerView({Key key}) : super(key: key);

  @override
  _AnimatedContainerViewState createState() => _AnimatedContainerViewState();
}

class _AnimatedContainerViewState extends State<AnimatedContainerView> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.red[900];

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.bounceOut,
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () => _chageShape(),
        child: Icon(Icons.add),
      ),
    );
  }

  void _chageShape() {
    final random = Random();
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);

      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
