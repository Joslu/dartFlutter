import 'package:contador/src/views/contador_page.dart';
import 'package:flutter/material.dart';

import 'package:contador/src/views/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage(),
      ),
    );
  }
}
