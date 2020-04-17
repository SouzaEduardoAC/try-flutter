import 'package:flutter/material.dart';

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
    return Center(
      child: RaisedButton(
        color: Colors.blueGrey,
        child: Text(
          "Voltar",
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () => _onClickVoltar(context),
      ),
    );
  }

  _onClickVoltar(BuildContext context) {
    Navigator.pop(context, 'List View Page');
  }
}
