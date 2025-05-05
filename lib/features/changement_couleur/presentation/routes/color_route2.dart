import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/pages/color_page.dart';

final GoRoute colorRoute2 = GoRoute(
  path: '/color/2',
  name: 'color2',
  builder: (context, state) => const ColorPage(),
);