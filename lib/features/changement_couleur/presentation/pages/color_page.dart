import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/cubit/color_cubit.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/cubit/color_state.dart';
import 'package:go_router/go_router.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Color Page'),
      ),
      body: BlocBuilder<ColorCubit, ColorState>(
        builder: (context, state) {
          Color backgroundColor = Colors.white;
          if (state is ColorChanged) {
            backgroundColor = state.color;
          }

          return Container(
            color: backgroundColor,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () => context.read<ColorCubit>().changeBackgroundColor(),
                    child: const Text('Change Background Color'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.go('/'),
                    child: const Text('Back to Home'),
                  ),
                ],
              ),
            ),
          );

        },
      ),
    );
  }
}

