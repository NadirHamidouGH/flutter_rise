import 'package:flutter/material.dart';

abstract class ColorState {}

class ColorInitial extends ColorState {}

class ColorChanged extends ColorState {
  final Color color;

  ColorChanged(this.color);
}
