import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_theme/blocs/theme.dart';
import 'package:provider_theme/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

//Se debe implementar provider desde el inicioo de la app para tenerlo disponible

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeChanger(
        ThemeData.dark(),
      ),
      child: MaterialAppWithTheme(),
    );
  }
}

//App con provider
class MaterialAppWithTheme extends StatelessWidget {
  const MaterialAppWithTheme({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider theme',
      theme: theme.getTheme(),
      home: HomePage(),
    );
  }
}
