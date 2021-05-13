import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_theme/blocs/theme.dart';

class ListaBotones extends StatelessWidget {
  const ListaBotones({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => theme.setTheme(ThemeData.light()),
          child: Text('Light'),
        ),
        ElevatedButton(
          onPressed: () => theme.setTheme(ThemeData.dark()),
          child: Text('Dark'),
        ),
      ],
    );
  }
}
