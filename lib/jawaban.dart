import 'package:flutter/material.dart';
// ignore: unused_import
import 'main.dart';

// ignore: must_be_immutable
class Jawaban extends StatelessWidget {
  final Function() handlePilih;
  String jawabanText;
  Jawaban(this.handlePilih, this.jawabanText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ElevatedButton(
        onPressed: handlePilih,
        style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
        child: Text(jawabanText),
      ),
    );
  }
}
