import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final items = ['uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis', 'siete'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: ListView(
        children: _crearListaCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> list = [];

    for (String item in items) {
      final tempWidget = ListTile(title: Text(item));
      list..add(tempWidget)..add(Divider());
    }

    return list;
  }

  List<Widget> _crearListaCorta() {
    return items.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('...'),
            leading: Icon(Icons.account_circle_rounded),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () => print('jaja'),
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
