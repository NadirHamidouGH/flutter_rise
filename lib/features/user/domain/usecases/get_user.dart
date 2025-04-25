import 'package:cubit_ca_demo/features/user/domain/entities/user.dart';
import 'package:cubit_ca_demo/features/user/domain/repositories/user_repository.dart';

class GetUser {
  final UserRepository repository;

  GetUser(this.repository);

  Future<User> call() {
    return repository.fetchUser();
  }
}
