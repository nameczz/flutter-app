import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Prodcut Page Here'),
        ),
        body: Column(
          children: <Widget>[
            Text('Welcome'),
            RaisedButton(
              child: Text('Back To Home'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
