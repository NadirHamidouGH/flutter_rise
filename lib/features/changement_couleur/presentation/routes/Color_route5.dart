import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/pages/color_page.dart';
import 'package:cubit_ca_demo/app_router.dart';

final GoRoute colorRoute5 = GoRoute(
  path: '${AppRouter.color}/5',
  builder: (context, state) => const ColorPage(),
);