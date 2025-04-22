import 'package:cubit_ca_demo/features/user/presentation/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/network/api_service.dart';
import 'features/user/data/repositories/user_repository_impl.dart';
import 'features/user/domain/usecases/get_user.dart';
import 'features/user/presentation/pages/user_page.dart';

void main() {
  // Initialiser les services
  final apiService = ApiService(baseUrl: 'https://randomuser.me');
  final userRepository = UserRepositoryImpl(apiService);
  final getUser = GetUser(userRepository);

  runApp(MyApp(getUser: getUser));
}

class MyApp extends StatelessWidget {
  final GetUser getUser;

  const MyApp({super.key, required this.getUser});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cubit Clean Architecture Demo',
      home: BlocProvider(
        // Ici, on utilise BlocProvider pour injecter une instance de UserCubit dans l'arbre des widgets.
        // UserCubit est notre gestionnaire d'état (state management) basé sur Cubit.
        // Il est responsable de la logique métier liée à l'utilisateur : appel du usecase GetUser, gestion des états de chargement, succès, erreur, etc.
        create: (context) => UserCubit(getUser),

        // Lors de la création du UserCubit, on lui passe le usecase GetUser.
        // Cela permet au Cubit d'appeler GetUser pour récupérer les données de l'utilisateur.
        child: const UserPage(),
        // La UserPage est l'écran qui va écouter les changements d'état du UserCubit
        // (par exemple : afficher un loader pendant le chargement, afficher l'utilisateur quand c'est réussi, ou afficher une erreur).
      ),

      ///
      ///home: MultiBlocProvider(
      //   providers: [
      //     BlocProvider<UserCubit>(
      //       create: (context) => UserCubit(
      //         getUser: getUser,
      //         updateUser: updateUser,
      //         deleteUser: deleteUser,
      //       ),
      //     ),
      //     BlocProvider<AdminCubit>(
      //       create: (context) => AdminCubit(
      //         getAdminDashboard: getAdminDashboard,
      //       ),
      //     ),
      //     // Et tu ajoutes ici d'autres Cubits si besoin
      //   ],
      //   child: const MainAppPage(), // <- La page qui utilise plusieurs Cubits
      // ),
    );
  }
}
