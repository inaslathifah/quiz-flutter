import 'package:flutter/material.dart';
import 'kuis.dart';
import 'hasil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _soalIndex = 0;
  var totalSkor = 0;
  var pertanyaan = [
    {
      'pertanyaan': 'Tempat apa yang akan Anda kunjungi?',
      'jawabaan': [
        {'text': 'Pegunungan', 'skor': 10}, // alt + shift + arrow down
        {'text': 'Pantai', 'skor': 5}, // alt + shift + arrow down
        {'text': 'Mall', 'skor': 3},
        {'text': 'Hutan', 'skor': 7},
      ],
    },
    {
      'pertanyaan': 'Apa warna kesukaan Anda?',
      'jawabaan': [
        {'text': 'Merah', 'skor': 7}, // alt + shift + arrow down
        {'text': 'Biru', 'skor': 3}, // alt + shift + arrow down
        {'text': 'Hijau', 'skor': 5},
        {'text': 'Hitam', 'skor': 1},
      ],
    },
    {
      'pertanyaan': 'Apa hobby Anda?',
      'jawabaan': [
        {'text': 'Sepak Bola', 'skor': 2}, // alt + shift + arrow down
        {'text': 'Basket', 'skor': 3}, // alt + shift + arrow down
        {'text': 'Berenang', 'skor': 6},
        {'text': 'Ngoding', 'skor': 4},
      ],
    },
  ];

  void resetQuiz() {
    setState(() {
      _soalIndex = 0;
      totalSkor = 0;
    });
  }

  void _jawaban(int skor) {
    totalSkor = totalSkor + skor;
    setState(() {
      _soalIndex += 1;
    });
    if (_soalIndex < pertanyaan.length) {
      print("Masih ada soal kok");
    } else {
      print("Sudah tidak ada soal lagi");
    }
    print(_soalIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Quiz'),
        ),
        body: _soalIndex < pertanyaan.length
            ? Kuis(
                jawaban: _jawaban,
                pertanyaan: pertanyaan,
                soalIndex: _soalIndex,
              )
            : Hasil(totalSkor, resetQuiz),
      ),
    );
  }
}
