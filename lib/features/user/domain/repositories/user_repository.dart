import 'package:cubit_ca_demo/features/user/domain/entities/user.dart';

abstract class UserRepository {
  Future<User> fetchUser();
}
