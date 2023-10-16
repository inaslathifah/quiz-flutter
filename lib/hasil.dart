import 'package:flutter/material.dart';
// ignore: unused_import
import 'main.dart';

// ignore: must_be_immutable
class Hasil extends StatelessWidget {
  int totalSkor;
  final Function() resetQuiz;
  Hasil(this.totalSkor, this.resetQuiz);

  //getter
  String get hasilText {
    String hasil = 'Anda Berhasil';
    if (totalSkor <= 8) {
      hasil = 'Sepi banget ya hidupmu';
    } else if (totalSkor <= 12) {
      hasil = 'Hmm... Lumayan juga ya kamu';
    } else if (totalSkor <= 16) {
      hasil = 'Keren Bangeett';
    } else {
      hasil = 'Wow energi kamu luar biasa';
    }
    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Text(
              hasilText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        TextButton(
          onPressed: resetQuiz,
          child: Text('Reset Quiz'),
          style: TextButton.styleFrom(
            primary: Color.fromARGB(255, 47, 29, 207),
          ),
        ),
      ],
    );
  }
}
