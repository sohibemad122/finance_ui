import 'package:finance_ui/feature/login/data/model/login_request_model.dart';
import 'package:finance_ui/feature/login/data/repo/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo authRepo;

  LoginCubit(this.authRepo,) : super(LoginInitial());

  Future<void> login(LoginRequestModel request) async {
    emit(LoginLoading());

    try {
      final user = await authRepo.login(request);

      if (user != null) {
        emit(LoginSuccess());
      } else {
        emit(LoginError('Login failed'));
      }
    } catch (e) {
      emit(LoginError(e.toString().replaceFirst('Exception: ', '')));
    }
  }
}