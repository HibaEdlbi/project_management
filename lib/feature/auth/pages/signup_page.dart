import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_management/core/domain/models/signup_model.dart';
import 'package:project_management/core/resources/asset.dart';
import 'package:project_management/core/resources/colors.dart';

import 'package:project_management/feature/auth/signup_bloc/signup_bloc.dart';

import 'package:project_management/shared/button_widget.dart';
import 'package:project_management/shared/check_widget.dart';
import 'package:project_management/shared/form_widget.dart';
import 'package:project_management/shared/text_button_widget.dart';
import 'package:project_management/shared/textfield_password_widget.dart';
import 'package:project_management/shared/textfield_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController roleController = TextEditingController();
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Orientation currentOrentation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: ColorManager().backGround,
      body: BlocConsumer<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state is SuccessState) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                'success sigup',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green,
            ));
            print('success signup');
          } else if (state is ErrorState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Faild registeration')));
          }
        },
        builder: (context, state) {
          if (state is LoadingState)
            return Center(
              child: CircularProgressIndicator(
                color: ColorManager().backGround,
              ),
            );

          return signupFormWidget(
            firstNameController: firstNameController,
            lastNameController: lastNameController,
            emailController: emailController,
            passwordController: passwordController,
            isTrue: isTrue,
          );
        },
      ),
    );
  }
}

class signupFormWidget extends StatelessWidget {
  const signupFormWidget({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
    required this.emailController,
    required this.passwordController,
    required this.isTrue,
  });

  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AuthContainer(
              colume: Column(
                children: [
                  TextfieldAuthWidget(
                      controller: firstNameController,
                      text: "first name",
                      top: 80),
                  TextfieldAuthWidget(
                      controller: lastNameController,
                      text: "last name",
                      top: 20),
                  TextfieldAuthWidget(
                      controller: emailController, text: "email", top: 20),
                  TextfieldPasswordAuthWidget(
                      controller: passwordController,
                      text: 'password',
                      top: 20),
                  ChecktWidget(
                      text: "Remember me", top: 10, isTrue: isTrue, left: 30),
                ],
              ),
              height: 438,
              width: 288,
              image: ImagesManager().bearImage),
          AuthButtonWidget(
            textColor: ColorManager().backGround,
            color: ColorManager().yellow,
              onTap: () async {
                final user = SignUpModel(
                  firstName: firstNameController.text,
                  lastName: lastNameController.text,
                  email: emailController.text,
                  password: passwordController.text,
                  role: "USER",
                );
                BlocProvider.of<SignupBloc>(context)
                    .add(PostPersonal(user: user));
              },
              width: 384,
              height: 60,
              text: "Sign UP",
              top: 50),
          LoginTextWidget(
              onTap: () {},
              text: "Already have an account ?",
              top: 0,
              option: "Login"),
        ],
      ),
    );
  }
}
