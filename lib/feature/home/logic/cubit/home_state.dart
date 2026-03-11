part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class LogoutLoading extends HomeState {}

final class LogoutSuccess extends HomeState {}

final class LogoutError extends HomeState {
  final String message;
  LogoutError(this.message);
}
