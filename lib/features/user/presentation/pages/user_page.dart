import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/user_state.dart';
import '../cubit/user_cubit.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cubit + Clean Architecture')),
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

              return ElevatedButton(
                onPressed: () => context.read<UserCubit>().fetchUser(),
                child: Text('Fetch User'),
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
  }
}
