import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/pages/color_page.dart';

final GoRoute colorRoute1 = GoRoute(
  path: '/color/1',
  name: 'color1',
  builder: (context, state) => const ColorPage(),
);