import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_management/core/config/get_it.dart';
import 'package:project_management/feature/auth/pages/login_page.dart';
import 'package:project_management/feature/auth/pages/signup_page.dart';
import 'package:project_management/feature/auth/signup_bloc/signup_bloc.dart';
import 'package:project_management/feature/order/pages/join_project.dart';
import 'package:project_management/feature/order/pages/shared_page.dart';
import 'package:project_management/shared/observe.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await setup();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
       providers: [
        BlocProvider<SignupBloc>(
          create: (_) => SignupBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: SignUp (),
      ),
    );
  }
}
