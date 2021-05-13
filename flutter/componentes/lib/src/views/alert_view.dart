import 'package:flutter/material.dart';

class AlertView extends StatelessWidget {
  const AlertView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.backspace_rounded),
        onPressed: () => Navigator.pop(context),
      ),
      appBar: AppBar(
        title: Text('Alert view'),
      ),
    );
  }
}
