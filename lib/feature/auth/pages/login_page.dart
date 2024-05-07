import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_management/core/domain/models/login_model.dart';
import 'package:project_management/core/domain/models/signup_model.dart';
import 'package:project_management/core/resources/colors.dart';
import 'package:project_management/feature/auth/login_bloc/bloc/login_bloc.dart';
import 'package:project_management/feature/order/pages/shared_page.dart';
import 'package:project_management/shared/button_widget.dart';
import 'package:project_management/shared/check_widget.dart';
import 'package:project_management/shared/form_widget.dart';
import 'package:project_management/shared/text_button_widget.dart';
import 'package:project_management/shared/textfield_widget.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: ColorManager().backGround,
          body: SingleChildScrollView(
            child: Column(
              children: [
                AuthContainer(
                    colume: Column(
                      children: [
                        TextfieldAuthWidget(
                            controller: emailController,
                            text: "email",
                            top: 80),
                        TextfieldAuthWidget(
                            controller: passwordController,
                            text: "password",
                            top: 40),
                        ChecktWidget(
                            text: "Remember me",
                            top: 10,
                            isTrue: isTrue,
                            left: 30),
                      ],
                    ),
                    height: 320,
                    width: 288,
                    image: "assets/images/bear.png"),
                AuthButtonWidget(
                    onTap: () {
                      context.read<LoginBloc>().add(
                        PostLogin(
                          login: LogInModel(
                            email: emailController.text,
                            password: passwordController.text,
                          ),
                        ),
                      );
                    },
                    textColor: ColorManager().backGround,
                    color: ColorManager().yellow,
                    width: 384,
                    height: 60,
                    text: "Login",
                    top: 50),
                LoginTextWidget(
                    onTap: () {},
                    text: "Don't have account ?",
                    top: 0,
                    option: "SignUp"),
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    if (state is Success) {
                      // Navigator.push(context,MaterialPageRoute(builder:(context) => PageShared(),));
                      return Text("Success");
                    } else if (state is Error) {
                      return Text("Error");
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
