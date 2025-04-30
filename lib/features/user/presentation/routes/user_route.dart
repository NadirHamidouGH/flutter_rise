import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/user/presentation/pages/user_page.dart';
import 'package:cubit_ca_demo/app_router.dart';

final List<GoRoute> userRoutes = [
  GoRoute(
    path: AppRouter.user,
    builder: (context, state) => const UserPage(),
  ),
];