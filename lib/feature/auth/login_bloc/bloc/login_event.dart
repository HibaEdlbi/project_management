part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}
class PostLogin extends LoginEvent {
final  LogInModel login;
  PostLogin({
    required this.login,
  });}