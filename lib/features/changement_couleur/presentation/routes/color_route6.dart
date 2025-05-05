import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/pages/color_page.dart';

final GoRoute colorRoute6 = GoRoute(
  path: '/color/6',
  name: 'color6',
  builder: (context, state) => const ColorPage(),
);