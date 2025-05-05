import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/pages/color_page.dart';

final GoRoute colorRoute3 = GoRoute(
  path: '/color/3',
  name: 'color3',
  builder: (context, state) => const ColorPage(),
);