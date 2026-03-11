import 'package:finance_ui/feature/register/data/model/register_request_model.dart';
import 'package:finance_ui/feature/register/data/repo/register_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part  'register_state.dart';
class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo authRepo;

  RegisterCubit({required this.authRepo}) : super(RegisterInitial());

  Future<void> register(RegisterRequestModel request) async {
    emit(RegisterLoading());

    try {
      final user = await authRepo.register(request);

      if (user != null) {
        emit(RegisterSuccess());
      } else {
        emit(RegisterError('Registration failed'));
      }
    } catch (e) {
      emit(RegisterError(e.toString()));
    }
  }
}
