import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/home/presentation/pages/home_page.dart';

final List<GoRoute> homeRoutes = [
  GoRoute(
    path: '/',
    name: 'home',
    builder: (context, state) => const HomePage(),
  ),
];