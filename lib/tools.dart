import 'dart:math';

import 'package:flutter/material.dart';

Color getRandomColor() {
  final Random random = Random();
  return Color.fromRGBO(
    random.nextInt(256), // 随机生成红色值 (0-255)
    random.nextInt(256), // 随机生成绿色值 (0-255)
    random.nextInt(256), // 随机生成蓝色值 (0-255)
    1, // alpha 通道，1 表示不透明
  );
}
