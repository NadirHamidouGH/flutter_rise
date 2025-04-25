import 'package:cubit_ca_demo/features/changement_couleur/domain/repositories/color_repositoy.dart';
import 'package:flutter/material.dart';

class ColorRepositoryImpl implements ColorRepository {
  int currentIndex = 0;

  final List<Color> colors = [
    Colors.white,
    Colors.blue.shade100,
    Colors.green.shade100,
    Colors.yellow.shade100,
    Colors.pink.shade100,
    Colors.purple.shade100,
  ];

  @override
  Color getNextColor() {
    currentIndex = (currentIndex + 1) % colors.length;
    return colors[currentIndex];
  }
}
