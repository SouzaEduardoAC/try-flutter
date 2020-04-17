import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
        ),
        body: _body());
  }

  _body() => Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _text(),
            _img(),
            _button()
          ],
        )
      );

  _wholeScreenImage() => SizedBox.expand(
        child: _img(),
      );

  _centeredImage() => Center(
        child: _img(),
      );

  _img() => Image.network(
        'https://uconn-today-universityofconn.netdna-ssl.com/wp-content/uploads/2013/04/husky_qa.jpg.jpeg',
        fit: BoxFit.cover,
      );

  _text() => Text(
        'Hello World',
        style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.wavy),
      );

  _button() => RaisedButton(
        color: Colors.blueGrey,
        child: Text(
          'OK',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: _onClickOk,
      );

  _onClickOk() => print('ok');
}
