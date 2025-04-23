import 'package:cubit_ca_demo/features/user/domain/entities/user.dart';
import 'package:cubit_ca_demo/features/user/domain/repositories/user_repository.dart';
import 'package:cubit_ca_demo/core/network/api_service.dart';

class UserRepositoryImpl implements UserRepository {
  final ApiService apiService;

  UserRepositoryImpl(this.apiService);

  @override
  Future<User> fetchUser() async {
    final data = await apiService.get('/api/');
    final userData = data['results'][0];
    return User.fromJson(userData);
  }
}
