import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  LoginBloc() : super(LoginInitial()) {
    on<VerifyPassword>(verifyPassword);
  }

  Future<FutureOr<void>> verifyPassword(
      VerifyPassword event, Emitter<LoginStates> emit) async {
    emit(Loading());
    // await Future.delayed(const Duration(seco nds: 2));
    // LoginModel loginModel;

    Map map = {"phone": event.name, "password": event.password};
    // loginModel =
    //     await Repository().checkPhoneNumber(url: '/user/login', data: map);
    print(map);
    if (event.name == "asd" && event.password == "123") {
      emit(LoginSuccess());
    } else {
      emit(LoginError(error: "invalid user"));
    }
  }

  // if (event.name == "abc" && event.password == "123") {
  //   emit(LoginSuccess());
  // } else {
  //   emit(LoginError(error: "Invalid credentials"));
  // }
}

class LoginEvents {}

class VerifyPassword extends LoginEvents {
  final String? name, password;

  VerifyPassword({this.name, this.password, required String district});
}

class LoginStates {}

class LoginInitial extends LoginStates {}

class Loading extends LoginStates {}

class LoginSuccess extends LoginStates {}

class LoginError extends LoginStates {
  final String? error;

  LoginError({this.error});
}
