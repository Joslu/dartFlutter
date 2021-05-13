import 'package:flutter/material.dart';

//Clase para notificar a los widgetss que esten escuchando algun cambio
// sobre cierta propiedad o nueva assiggnación de valores
class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger(this._themeData);

  //Getter
  getTheme() => _themeData;

  //Setter
  setTheme(ThemeData theme) {
    this._themeData = theme;
    notifyListeners();
  }
}
