import 'package:cubit_ca_demo/features/home/presentation/routes/home_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/user/presentation/routes/user_route.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/routes/color_routes.dart';



/// AppRouter is a class that manages the application's navigation.
/// It uses the GoRouter package to define the application's routes.
/// It contains a list of routes and a GoRouter router.
/// It allows navigation between the different pages of the application.
/// It is used in the main.dart file to configure the application's navigation.
/// It is used in the files of each feature to define routes specific to each feature.


final GoRouter appRouter = GoRouter(
  routes: <RouteBase> [
    ...homeRoutes,
    ...userRoutes,
    ...colorRoutes,
  ],
);


/// This method allows returning to the previous view.
/// It uses GoRouter to perform the navigation.

void backToPreviousView(BuildContext context) {
  GoRouter.of(context).pop();
}