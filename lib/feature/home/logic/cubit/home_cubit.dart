import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  Future<void> logout() async {
    emit(LogoutLoading());
    try {
    await FirebaseAuth.instance.signOut();
      emit(LogoutSuccess());
    } catch (e) {
      emit(LogoutError(e.toString()));
    }
  }
}
