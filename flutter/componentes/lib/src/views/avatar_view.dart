import 'package:flutter/material.dart';

class AvatarView extends StatelessWidget {
  const AvatarView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar view'),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://c8.alamy.com/compes/d0nx3y/inventor-y-fisico-nikola-tesla-d0nx3y.jpg'),
            radius: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              child: Text('JL'),
              backgroundColor: Colors.red[200],
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          fadeInDuration: Duration(milliseconds: 500),
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/free-energy-nikola-tesla-debra-hurd.jpg'),
        ),
      ),
    );
  }
}
