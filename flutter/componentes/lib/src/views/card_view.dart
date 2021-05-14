import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 50.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.radio),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text(
                'Descripcióin de la tarjeta. donde estamoss testeando su funcionamientos'),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () => print('cancelar'),
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: () => print('aceptar'),
                child: Text('ok'),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(seconds: 2),
            fadeOutDuration: Duration(seconds: 1),
            fit: BoxFit.cover,
            height: 300.0,
          ),
          // Image(
          //   image: NetworkImage(
          //       'https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Imagen'),
          ),
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
