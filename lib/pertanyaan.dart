import 'package:flutter/material.dart';
// ignore: unused_import
import 'main.dart';

// ignore: must_be_immutable
class Pertanyaan extends StatelessWidget {
  var pertanyaan;
  Pertanyaan(this.pertanyaan);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        pertanyaan,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
