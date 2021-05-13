import 'package:componentes/src/routes/routes.dart';
import 'package:componentes/src/views/alert_view.dart';

import 'package:componentes/src/views/home_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Componennetes APP',
      initialRoute: 'home',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('ruta ${settings.name}');

        return MaterialPageRoute(
          builder: (BuildContext context) => AlertView(),
        );
      },
      home: HomeView(),
    );
  }
}
