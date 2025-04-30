import 'package:cubit_ca_demo/features/home/presentation/routes/home_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/routes/color_route.dart';
import 'package:cubit_ca_demo/features/user/presentation/routes/user_route.dart';


/// AppRouter est une classe qui gère la navigation de l'application.
/// Elle utilise le package GoRouter pour définir les routes de l'application.
/// Elle contient une liste de routes et un routeur GoRouter.
/// Elle permet de naviguer entre les différentes pages de l'application.
/// Elle est utilisée dans le fichier main.dart pour configurer la navigation de l'application.
/// Elle est utilisée dans les fichiers de chaque fonctionnalité pour définir les routes spécifiques à chaque fonctionnalité.

class AppRouter {
  static const String home = '/';
  static const String color = '/color';
  static const String user = '/user';
}

final GoRouter appRouter = GoRouter(
  routes: <RouteBase> [
    ...homeRoutes,
    ...userRoutes,
    ...colorRoutes,
  ],
);


/// Cette méthode permet de revenir à la vue précédente.
/// Elle utilise le GoRouter pour effectuer la navigation.
///
void backToPreviousView(BuildContext context) {
  GoRouter.of(context).pop();
}