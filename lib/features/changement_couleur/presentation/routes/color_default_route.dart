import 'package:cubit_ca_demo/features/changement_couleur/presentation/pages/color_page.dart';
import 'package:go_router/go_router.dart';

final GoRoute colorDefaultRoute = GoRoute(
  path: '/color',
  name: 'colorDefault',
  builder: (context, state) => const ColorPage(),
);