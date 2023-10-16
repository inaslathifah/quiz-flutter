import 'package:flutter/material.dart';
import 'pertanyaan.dart';
import 'jawaban.dart';

class Kuis extends StatelessWidget {
  final Function(int) jawaban;
  final List<Map<String, Object>> pertanyaan;
  final int soalIndex;

  Kuis({
    required this.jawaban,
    required this.pertanyaan,
    required this.soalIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pertanyaan(pertanyaan[soalIndex]['pertanyaan'].toString()),
        ...(pertanyaan[soalIndex]['jawabaan'] as List<Map<String, Object>>)
            .map((jawabanText) {
          return Jawaban(() => jawaban(jawabanText['skor'] as int),
              jawabanText['text'].toString());
        }).toList(),
      ],
    );
  }
}
