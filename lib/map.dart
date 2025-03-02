import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:my_first_flutter_project/bloc/signupbloc.dart';
import 'package:my_first_flutter_project/login.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => RegistrationState();
}

class RegistrationState extends State<Register> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController nationality = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController gender = TextEditingController();
  bool _isPasswordHidden = true;

  String dropdownvalue = 'Select District';

  var items = [
    'Select District',
    'Ktm',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(screenWidth > 600
              ? 50
              : 25), // Adjust padding based on screen width
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: screenWidth > 600 ? 50 : 25),
                    child: Row(
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: screenWidth > 600
                                ? 40
                                : 30, // Adjust font size based on screen width
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: screenWidth > 600 ? 50 : 25),
                    child: Row(
                      children: [
                        Text(
                          "Create an Account",
                          style: TextStyle(
                            fontSize: screenWidth > 600
                                ? 40
                                : 30, // Adjust font size based on screen width
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(129, 129, 131, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.person_2_outlined,
                      color: Color.fromRGBO(0, 65, 255, 1)),
                  const Padding(padding: EdgeInsets.all(6)),
                  Text(
                    "Create Name",
                    style: TextStyle(
                      fontSize: screenWidth > 600
                          ? 30
                          : 20, // Adjust font size based on screen width
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth > 600 ? 500 : 370,
                height: 44,
                child: TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: const EdgeInsets.only(top: 2, left: 15),
                    hintText: "Enter Your Name",
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  const Icon(Icons.email_outlined,
                      color: Color.fromRGBO(0, 65, 255, 1)),
                  const Padding(padding: EdgeInsets.all(6)),
                  Text(
                    "Create Email",
                    style: TextStyle(
                      fontSize: screenWidth > 600
                          ? 30
                          : 20, // Adjust font size based on screen width
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth > 600 ? 500 : 370,
                height: 44,
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: const EdgeInsets.only(top: 2, left: 15),
                    hintText: "Enter Your Email",
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  const Icon(Icons.phone_enabled_outlined,
                      color: Color.fromRGBO(0, 65, 255, 1)),
                  const Padding(padding: EdgeInsets.all(6)),
                  Text(
                    "Phone Number",
                    style: TextStyle(
                      fontSize: screenWidth > 600
                          ? 30
                          : 20, // Adjust font size based on screen width
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth > 600 ? 500 : 370,
                height: 44,
                child: TextField(
                  controller: phoneNumber,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: const EdgeInsets.only(top: 2, left: 15),
                    hintText: "Enter Your Phone Number",
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  const Icon(Icons.password,
                      color: Color.fromRGBO(0, 65, 255, 1)),
                  const Padding(padding: EdgeInsets.all(6)),
                  Text(
                    "Create Password",
                    style: TextStyle(
                      fontSize: screenWidth > 600
                          ? 30
                          : 20, // Adjust font size based on screen width
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth > 600 ? 500 : 370,
                height: 44,
                child: TextFormField(
                  controller: pass,
                  obscureText: _isPasswordHidden,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: const EdgeInsets.only(top: 2, left: 15),
                    hintText: "Enter Your Password",
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth > 600 ? 500 : 370,
                height: 44,
                child: Row(
                  children: [
                    Checkbox(
                      value: !_isPasswordHidden,
                      onChanged: (value) {
                        setState(() {
                          _isPasswordHidden = !value!;
                        });
                      },
                    ),
                    const Text(
                      "Show Password",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(129, 129, 131, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              MaterialButton(
                color: const Color.fromRGBO(0, 65, 255, 1),
                height: 44,
                minWidth: screenWidth > 600
                    ? 572
                    : 286, // Adjust button width based on screen width
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: () {
                  if (name.text.isEmpty) {
                    Fluttertoast.showToast(msg: "Enter Name");
                  } else if (email.text.isEmpty) {
                    Fluttertoast.showToast(msg: "Enter Email");
                  } else if (pass.text.isEmpty) {
                    Fluttertoast.showToast(msg: "Enter Password");
                  } else {
                    var state;
                    BlocProvider.of<SignupBloc>(context).add(RegistrationMod(
                      name: name.text.toString(),
                      password: pass.text.toString(),
                      email: email.text.toString(),
                      phnNo: phoneNumber.text.toString(),
                      gender: gender.text.toString(),
                      address: address.text.toString(),
                      nationality: nationality.text.toString(),
                      district: dropdownvalue,
                      state: state.text.toString(),
                    ));
                  }
                },
                child: BlocConsumer<SignupBloc, SignupStates>(
                  builder: (state, context) {
                    if (state is Fetc) {
                      return const CircularProgressIndicator();
                    }
                    return const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(254, 254, 255, 1),
                      ),
                    );
                  },
                  listener: (context, state) {
                    if (state is SignupSuccess) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    } else {
                      Fluttertoast.showToast(msg: "Wrong password or username");
                    }
                  },
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(129, 129, 131, 1),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to the login page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 65, 255, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
