import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/pages/color_page.dart';
import 'package:cubit_ca_demo/features/home/presentation/pages/home_page.dart';
import 'package:cubit_ca_demo/features/user/presentation/pages/user_page.dart';


final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/color',
      builder: (context, state) => const ColorPage(),
    ),
    GoRoute(
        path: '/user',
    builder: (context, state) => const UserPage(),
    ),

  ],
);