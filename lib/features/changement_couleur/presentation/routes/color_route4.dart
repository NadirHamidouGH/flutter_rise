import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/pages/color_page.dart';
import 'package:cubit_ca_demo/app_router.dart';

final GoRoute colorRoute4 = GoRoute(
  path: '${AppRouter.color}/4',
  builder: (context, state) => const ColorPage(),
);