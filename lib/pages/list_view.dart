import 'package:flutter/material.dart';
import 'package:tryflutter/widgets/blue_button.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Page'),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return ListView(
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
      );
  }

  _img(String imgPath) => Image.network(
    imgPath,
    fit: BoxFit.cover,
  );

  _onClickVoltar(BuildContext context) {
    Navigator.pop(context, 'List View Page');
  }
}
