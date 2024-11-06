import 'package:flutter/material.dart';
import 'package:key_study/tools.dart';

class BoxFulWiget extends StatefulWidget {
  const BoxFulWiget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<BoxFulWiget> createState() => _BoxFulWigetState();
}

class _BoxFulWigetState extends State<BoxFulWiget> {
  Color backgroundColor = getRandomColor();

  @override
  Widget build(BuildContext context) {
    print("BoxFulWiget build");

    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.center,
      color: backgroundColor,
      child: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
