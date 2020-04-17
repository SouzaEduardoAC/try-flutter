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

  _body() => SingleChildScrollView(
    child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _text(),
            _carousel(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button('ListView'),
                _button('Page 2'),
                _button('Page 3'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button('Snack'),
                _button('Dialog'),
                _button('Toast'),
              ],
            ),
            _text(),
            _carousel(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button('ListView'),
                _button('Page 2'),
                _button('Page 3'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button('Snack'),
                _button('Dialog'),
                _button('Toast'),
              ],
            ),
          ],
        )),
  );

  _carousel() => Container(
        margin: EdgeInsets.all(20),
        height: 300,
        child: PageView(
          children: <Widget>[
            _img(
                'https://huskyadvisor.com/wp-content/uploads/2019/08/husky-puppy-150x150.jpg'),
            _img(
                'https://uconn-today-universityofconn.netdna-ssl.com/wp-content/uploads/2013/04/husky_qa.jpg.jpeg'),
            _img(
                'https://petshopdamadre.com.br/wp-content/uploads/2018/12/husky-e1544223858680-510x510.jpg'),
            _img(
                'https://www.thesprucepets.com/thmb/T39xIBoItE7jzRSEBJRInGg9pCA=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/breed_profile_husky_1118000_hero_690-0158e427a4734e0fae59e2e91a7fe6e4.jpg'),
            _img(
                'https://cdn11.bigcommerce.com/s-oe2q4reh/images/stencil/160w/products/738/1297/Silver_Siberian_Husky_Puppy__26120.1568507116.jpg?c=2 '),
          ],
        ),
      );

  _wholeScreenImage() => SizedBox.expand(
        child: _img(
            'https://uconn-today-universityofconn.netdna-ssl.com/wp-content/uploads/2013/04/husky_qa.jpg.jpeg'),
      );

  _centeredImage() => Center(
        child: _img(
            'https://uconn-today-universityofconn.netdna-ssl.com/wp-content/uploads/2013/04/husky_qa.jpg.jpeg'),
      );

  _img(String imgPath) => Image.network(
        imgPath,
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

  _button(String text) => RaisedButton(
        color: Colors.blueGrey,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: _onClickOk,
      );

  _onClickOk() => print('ok');
}
