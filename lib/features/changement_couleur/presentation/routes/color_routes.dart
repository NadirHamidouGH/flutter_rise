import 'package:cubit_ca_demo/features/changement_couleur/presentation/routes/Color_route5.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/routes/color_default_route.dart';
import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/routes/color_route1.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/routes/color_route2.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/routes/color_route3.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/routes/color_route4.dart';
import 'package:cubit_ca_demo/features/changement_couleur/presentation/routes/color_route6.dart';

final List<GoRoute> colorRoutes = [
  colorDefaultRoute,
  colorRoute1,
  colorRoute2,
  colorRoute3,
  colorRoute4,
  colorRoute5,
  colorRoute6,
];