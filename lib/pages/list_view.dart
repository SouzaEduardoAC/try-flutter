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
    return BlueButton(
      "voltar",
      onPressed: () => _onClickVoltar(context),
    );
  }

  _onClickVoltar(BuildContext context) {
    Navigator.pop(context, 'List View Page');
  }
}
