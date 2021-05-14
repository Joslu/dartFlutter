import 'package:componentes/src/routes/routes.dart';
import 'package:componentes/src/views/alert_view.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:componentes/src/views/home_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('es', ''), // Spanish, no country code
      ],
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
