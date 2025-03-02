import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first_flutter_project/model/registrationmodel.dart';
import 'package:my_first_flutter_project/repositories/repositories.dart';

class SignupBloc extends Bloc<SignupEvents, SignupStates> {
  SignupBloc() : super(SignupInitial()) {
    on<RegistrationMod>(registrationUser);
  }

  Future<FutureOr<void>> registrationUser(
      RegistrationMod event, Emitter<SignupStates> emit) async {
    emit(Fetc());
    // await Future.delayed(const Duration(seco nds: 2));
    // SignupUser SignupUser;

    Map map = {
      "name": event.name,
      "phn_no": event.phnNo,
      "email": event.email,
      "gender": event.gender,
      "password": event.password,
      "address": event.address,
      "nationality": event.nationality,
      "state": event.state,
      "district": event.district,
      //"dob": event.dob,
    };
    RegistrationModel user =
        await Repository().signup(url: "/user/register", data: map);
    print(map);
    if (user.status == true) {
      emit(SignupSuccess());
    } else {
      emit(SignupError(error: "invalid user"));
    }
  }

  // if (event.name == "abc" && event.password == "123") {
  //   emit(SignupSuccess());
  // } else {
  //   emit(SignupError(error: "Invalid credentials"));
  // }
}

class SignupEvents {}

class RegistrationMod extends SignupEvents {
  final String? name,
      email,
      phnNo,
      gender,
      address,
      nationality,
      //dob,
      password,
      district,
      state;

  RegistrationMod(
      {this.name,
      this.email,
      this.phnNo,
      this.gender,
      this.address,
      this.nationality,
      //this.dob,
      this.password,
      this.district,
      this.state});
}

class SignupStates {}

class SignupInitial extends SignupStates {}

class Fetc extends SignupStates {}

class SignupSuccess extends SignupStates {}

class SignupError extends SignupStates {
  final String? error;

  SignupError({this.error});
}
