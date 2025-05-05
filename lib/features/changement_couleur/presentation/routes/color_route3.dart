import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/pages/color_page.dart';
import 'package:cubit_ca_demo/app_router.dart';

final GoRoute colorRoute3 = GoRoute(
  path: '${AppRouter.color}/3',
  builder: (context, state) => const ColorPage(),
);