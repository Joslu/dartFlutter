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
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar alerta'),
          onPressed: () => _showAlert(context),
          style: ElevatedButton.styleFrom(
            elevation: 10.0,
            shape: StadiumBorder(),
          ),
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Contenido de la alerta'),
                FlutterLogo(
                  size: 80.0,
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => {},
                child: Text('Ok'),
              ),
              TextButton(
                onPressed: () => {Navigator.of(context).pop()},
                child: Text('Not ok'),
              )
            ],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          );
        });
  }
}
