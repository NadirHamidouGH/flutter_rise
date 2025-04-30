import 'package:cubit_ca_demo/features/home/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/app_router.dart';

final List<GoRoute> homeRoutes = [
  GoRoute(
    path: AppRouter.home,
    builder: (context, state) => const HomePage(),
  ),
];