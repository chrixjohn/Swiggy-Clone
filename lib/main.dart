import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_first_flutter_project/map.dart';
import 'package:my_first_flutter_project/registration.dart';
import 'package:my_first_flutter_project/swiggy.dart';

import 'bloc/signinbloc.dart';
import 'bloc/signupbloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(create: (BuildContext context) => LoginBloc()),
        BlocProvider<SignupBloc>(
            create: (BuildContext context) => SignupBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const Register(),
      ),
    );
  }
}
