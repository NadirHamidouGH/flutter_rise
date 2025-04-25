
import 'package:cubit_ca_demo/features/changement_couleur/domain/repositories/color_repositoy.dart';
import 'package:flutter/material.dart';

class ChangeColor {
  final ColorRepository repository;

  ChangeColor(this.repository);

  Color call() {
    return repository.getNextColor();
  }
}
