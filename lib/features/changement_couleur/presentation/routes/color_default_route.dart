import 'package:cubit_ca_demo/app_router.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/pages/color_page.dart';
import 'package:go_router/go_router.dart';

final GoRoute colorDefaultRoute = GoRoute(
  path: AppRouter.color,
  builder: (context, state) => const ColorPage(),
);
