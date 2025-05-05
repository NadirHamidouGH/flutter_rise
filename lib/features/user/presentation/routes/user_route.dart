import 'package:go_router/go_router.dart';
import 'package:cubit_ca_demo/features/user/presentation/pages/user_page.dart';

final List<GoRoute> userRoutes = [
  GoRoute(
    path: '/user',
    name: 'user',
    builder: (context, state) => const UserPage(),
  ),
];