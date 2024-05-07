import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_management/core/domain/models/signup_model.dart';
import 'package:project_management/core/domain/services/signup_service.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<PostPersonal>((event, emit) async {
      if (event is PostPersonal) {
        emit(LoadingState());
        SignUpModel? newuser = await signupService.registerUser(event.user);

        newuser == null
            ? emit(ErrorState())
            : emit(SuccessState(user: newuser));
      }
    });
  }
  final signupService = SignUpService();
}
