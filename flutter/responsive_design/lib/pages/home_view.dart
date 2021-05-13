import 'package:flutter/material.dart';
import 'package:responsive_design/ui/base_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      return Scaffold(
          body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 150,
              margin: const EdgeInsets.all(50),
              color: Colors.purple,
              child: BaseWidget(
                builder: (context, sizingInffo) => Text(sizingInffo.toString()),
              ),
            ),
            Text(sizingInformation.toString()),
          ],
        ),
      ));
    });
  }
}
