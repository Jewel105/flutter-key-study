import 'package:flutter/material.dart';
import 'package:key_study/tools.dart';

class BoxLessWiget extends StatelessWidget {
  const BoxLessWiget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    print("BoxLessWiget build");
    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.center,
      color: getRandomColor(),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
