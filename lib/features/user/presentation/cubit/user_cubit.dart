import 'package:cubit_ca_demo/features/user/domain/usecases/get_user.dart';
import 'package:cubit_ca_demo/features/user/presentation/cubit/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserState> {
  final GetUser getUser;

  UserCubit(this.getUser) : super(UserInitial());

  void fetchUser() async {
    try {
      emit(UserLoading());
      final user = await getUser();
      emit(UserLoaded(user));
    } catch (e) {
      emit(UserError('Failed to fetch user'));
    }
  }

  void resetState() {
    emit(UserInitial());
  }
}
