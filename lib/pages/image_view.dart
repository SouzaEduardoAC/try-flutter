import 'package:flutter/material.dart';
import 'package:tryflutter/pages/dog_page.dart';
import 'package:tryflutter/utils/dog.dart';
import 'package:tryflutter/utils/nav.dart';

class ImageViewPage extends StatefulWidget {
  @override
  _ImageViewPageState createState() => _ImageViewPageState();
}

class _ImageViewPageState extends State<ImageViewPage> {
  bool _gridView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Page'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.list),
              onPressed: () => setState(() => _gridView = false)),
          IconButton(
              icon: Icon(Icons.grid_on),
              onPressed: () => setState(() => _gridView = true)),
        ],
      ),
      body: _body(context),
    );
  }

  final _dogs = [
    Dog('Husky puppy',
        'https://huskyadvisor.com/wp-content/uploads/2019/08/husky-puppy-150x150.jpg'),
    Dog('Husky background img',
        'https://uconn-today-universityofconn.netdna-ssl.com/wp-content/uploads/2013/04/husky_qa.jpg.jpeg'),
    Dog('Husky puppy running',
        'https://petshopdamadre.com.br/wp-content/uploads/2018/12/husky-e1544223858680-510x510.jpg'),
    Dog('Husky adult',
        'https://www.thesprucepets.com/thmb/T39xIBoItE7jzRSEBJRInGg9pCA=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/breed_profile_husky_1118000_hero_690-0158e427a4734e0fae59e2e91a7fe6e4.jpg'),
    Dog(
      'Husky puppy laid down',
      'https://cdn11.bigcommerce.com/s-oe2q4reh/images/stencil/160w/products/738/1297/Silver_Siberian_Husky_Puppy__26120.1568507116.jpg?c=2 ',
    ),
  ];

  _body(BuildContext context) {
    if (_gridView) {
      return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _dogs.length,
        itemBuilder: (context, index) {
          return _itemView(index);
        },
      );
    } else {
      return ListView.builder(
        itemExtent: 350,
        itemCount: _dogs.length,
        itemBuilder: (context, index) {
          return _itemView(index);
        },
      );
    }
  }

  _itemView(int index) {
    return GestureDetector(
      onTap: () => push(context, DogPage(_dogs[index])),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _img(_dogs[index].foto),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.all(8),
                child: Text(
                  _dogs[index].nome,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              )),
        ],
      ),
    );
  }

  _img(String imgPath) => Image.network(
        imgPath,
        fit: BoxFit.cover,
      );
}
