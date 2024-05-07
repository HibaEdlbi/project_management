// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'signup_bloc.dart';

@immutable
sealed class SignupEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class PostPersonal extends SignupEvent {
  SignUpModel user;
  PostPersonal({
    required this.user,
  });

  @override
  List<Object> get props => [user];
}
