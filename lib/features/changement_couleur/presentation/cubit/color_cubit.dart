
import 'package:cubit_ca_demo/features/changement_couleur/domain/usecases/change_color.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'color_state.dart';

class ColorCubit extends Cubit<ColorState> {
  final ChangeColor changeColor;

  ColorCubit(this.changeColor) : super(ColorInitial());

  void changeBackgroundColor() {
    final newColor = changeColor();
    emit(ColorChanged(newColor));
  }
}
