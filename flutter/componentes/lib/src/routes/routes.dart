import 'package:componentes/src/views/animated_container.dart';
import 'package:componentes/src/views/card_view.dart';
import 'package:componentes/src/views/inputs_view.dart';
import 'package:flutter/material.dart';

import 'package:componentes/src/views/alert_view.dart';
import 'package:componentes/src/views/avatar_view.dart';
import 'package:componentes/src/views/home_view.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomeView(),
    'alert': (BuildContext context) => AlertView(),
    'avatar': (BuildContext context) => AvatarView(),
    'card': (BuildContext context) => CardView(),
    'animatedContainer': (BuildContext context) => AnimatedContainerView(),
    'inputs': (BuildContext context) => InputsView(),
  };
}
