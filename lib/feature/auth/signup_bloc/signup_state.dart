part of 'signup_bloc.dart';

@immutable
sealed class SignupState extends Equatable {
  @override
  List<Object> get props => [];
}

final class SignupInitial extends SignupState {}

class SuccessState extends SignupState {
  SignUpModel user;
  SuccessState({required this.user});
  
  @override
  List<Object> get props => [user];
}

class LoadingState extends SignupState {}

class ErrorState extends SignupState {}

class OfflineState extends SignupState {}
