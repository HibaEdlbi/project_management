import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_management/core/domain/models/login_model.dart';
import 'package:project_management/core/domain/services/login_service.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<PostLogin>((event, emit) async {
      // try {
        emit(Loading());
        dynamic temp = await LogInServiceImpl().loginData(event.login);
        if (temp is String) {
          emit(Error());
          print(temp);
        } else {
          emit(Success());
        }
      // } catch (e) {
        // emit(Offline());
      // }
    });
  }
}
