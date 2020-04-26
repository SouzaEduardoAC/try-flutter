import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tryflutter/pages/grid_view.dart';
import 'package:tryflutter/pages/image_view.dart';
import 'package:tryflutter/pages/list_view.dart';
import 'package:tryflutter/utils/nav.dart';
import 'package:tryflutter/widgets/blue_button.dart';
import 'package:tryflutter/widgets/nav_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
          bottom: TabBar(tabs: [
            Tab(
              text: 'Tab 1',
            ),
            Tab(
              text: 'Tab 2',
            ),
          ]),
        ),
        drawer: DrawerList(),
        body: TabBarView(
          children: <Widget>[_body(context), Container(color: Colors.yellow,)],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => _onClockFab(),
            ),
            SizedBox(
              width: 8,
              height: 8,
            ),
            FloatingActionButton(
              child: Icon(Icons.favorite_border),
              onPressed: () => _onClockFab(),
            ),
          ],
        ),
      ),
    );
  }

  _body(BuildContext context) => Container(
        padding: EdgeInsets.only(top: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _text(),
            _carousel(),
            _buttons(),
          ],
        ),
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

  void _onClickNavigator(BuildContext context, Widget page) async {
    String capturedValue = await push(context, page);
    print(' >> $capturedValue');
  }

  _onClickSnack(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('Snack bar YEY'),
      action: SnackBarAction(
        label: "OK",
        textColor: Colors.yellow,
        onPressed: () => {},
      ),
    ));
  }

  _buttons() {
    return Builder(
      builder: (BuildContext context) {
        return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BlueButton(
                  'ListView',
                  onPressed: () => _onClickNavigator(context, ListViewPage()),
                ),
                BlueButton(
                  'Grid View',
                  onPressed: () => _onClickNavigator(context, GridViewPage()),
                ),
                BlueButton(
                  'Image View',
                  onPressed: () => _onClickNavigator(context, ImageViewPage()),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BlueButton(
                  'Snack',
                  onPressed: () => _onClickSnack(context),
                ),
                BlueButton(
                  'Dialog',
                  onPressed: () => _onClickDialog(context),
                ),
                BlueButton(
                  'Toast',
                  onPressed: () => _onClickToast(),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  _onClickDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // disable actions outside the dialog
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => false,
          // disable action on return button from android
          child: AlertDialog(
            title: Text('YEEEY Dialog'),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  _onClickToast() {
    Fluttertoast.showToast(
        msg: "Toast example!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  _onClockFab() {
    print('Add');
  }
}
