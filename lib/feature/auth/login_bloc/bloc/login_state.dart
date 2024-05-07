part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();
  
  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}
class Success extends LoginState {}

class Loading extends LoginState {}

class Error extends LoginState {}

class Offline extends LoginState {}