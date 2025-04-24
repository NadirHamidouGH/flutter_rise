import 'package:cubit_ca_demo/features/changement_couleur/presentation/cubit/color_cubit.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/cubit/color_state.dart'; // Ajouté
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/user_state.dart';
import '../cubit/user_cubit.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Ajout : BlocBuilder pour écouter les changements de couleur
    return BlocBuilder<ColorCubit, ColorState>(
      builder: (context, colorState) {
        // Par défaut, la couleur de fond est blanche
        Color backgroundColor = Colors.white;

        // Si une couleur a été émise par le Cubit, on l'utilise
        if (colorState is ColorChanged) {
          backgroundColor = colorState.color;
        }

        return Scaffold(
          appBar: AppBar(title: Text('Cubit + Clean Architecture')),
          backgroundColor: backgroundColor, // Ajout de la couleur dynamique ici
          body: Center(
            child: BlocBuilder<UserCubit, UserState>(
              // BlocBuilder est utilisé ici pour reconstruire dynamiquement l'interface utilisateur
              // en fonction des changements d'état (state) provenant du UserCubit.
              builder: (context, state) {
                // À chaque changement d'état dans UserCubit, ce builder est appelé pour mettre à jour l'affichage.

                if (state is UserInitial) {
                  // Si l'état actuel est UserInitial (état de départ), on affiche un bouton "Fetch User".
                  // Quand l'utilisateur clique dessus, on déclenche la méthode fetchUser() du UserCubit,
                  // qui va lancer la logique pour récupérer un utilisateur.

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => context.read<UserCubit>().fetchUser(),
                        child: Text('Fetch User'),
                      ),
                      SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () => context.read<ColorCubit>().changeBackgroundColor(),
                        child: Text('Changement Couleur Background'),
                      ),
                    ],
                  );
                } else if (state is UserLoading) {
                  // Si l'état est UserLoading, cela veut dire qu'on est en train de récupérer l'utilisateur.
                  // Donc on affiche un indicateur de chargement (loader).

                  return CircularProgressIndicator();
                } else if (state is UserLoaded) {
                  // Si l'état est UserLoaded, cela signifie que les données de l'utilisateur ont été récupérées avec succès.
                  // On affiche alors les informations de l'utilisateur (nom et âge).

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Name: ${state.user.name}'),
                      Text('Age: ${state.user.age}'),
                      SizedBox(height: 16),

                      // On propose aussi un bouton pour réinitialiser l'état
                      // en appelant resetState() du UserCubit.
                      ElevatedButton(
                        onPressed: () => context.read<UserCubit>().resetState(),
                        child: Text('Reset'),
                      ),
                      ElevatedButton(
                        onPressed: () => context.read<ColorCubit>().changeBackgroundColor(),
                        child: Text('Changement Couleur Background'),
                      ),
                    ],
                  );
                } else if (state is UserError) {
                  // Si l'état est UserError, cela signifie qu'une erreur est survenue lors de la récupération de l'utilisateur.
                  // On affiche alors le message d'erreur.

                  return Text(state.message);
                }

                // Par défaut, si aucun état n'est reconnu, on retourne un container vide.
                return Container();
              },
            ),
          ),
        );
      },
    );
  }
}
