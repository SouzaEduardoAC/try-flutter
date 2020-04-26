import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Eduardo Souza'),
              accountEmail: Text('souzaeduardoac@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://cdn11.bigcommerce.com/s-oe2q4reh/images/stencil/160w/products/738/1297/Silver_Siberian_Husky_Puppy__26120.1568507116.jpg?c=2 '),
              ),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Favoritos'),
              subtitle: Text('mais informações...'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('1');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Ajuda'),
              subtitle: Text('mais informações...'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('1');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('1');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
