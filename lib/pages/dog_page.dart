import 'package:flutter/material.dart';
import 'package:tryflutter/utils/dog.dart';

class DogPage extends StatelessWidget {
  final Dog dog;

  DogPage(this.dog);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dog.nome),
      ),
      body: _body(),
    );
  }

  _body() => Image.network(dog.foto);
}
