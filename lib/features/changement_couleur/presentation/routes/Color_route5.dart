import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/pages/color_page.dart';

final GoRoute colorRoute5 = GoRoute(
  path: '/color/5',
  name: 'color5',
  builder: (context, state) => const ColorPage(),
);