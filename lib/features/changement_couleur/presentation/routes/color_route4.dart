import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/pages/color_page.dart';

final GoRoute colorRoute4 = GoRoute(
  path: '/color/4',
  name: 'color4',
  builder: (context, state) => const ColorPage(),
);