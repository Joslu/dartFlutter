import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_theme/blocs/theme.dart';
import 'package:provider_theme/widgets/lista_botones_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme provider'),
      ),
      body: Center(
        child: ListaBotones(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.emoji_objects),
        onPressed: () => theme.setTheme(ownTheme),
      ),
    );
  }
}

ThemeData ownTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.purple[600],
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.purple[200],
    ));
