import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_first_flutter_project/bottom.dart';
import 'package:my_first_flutter_project/registration.dart';
import 'package:my_first_flutter_project/bloc/signinbloc.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController uname = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 210, 107, 33),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Login",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      drawer: const Drawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 250),
          child: SizedBox(
            height: 300,
            width: 200,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextFormField(
                controller: uname,
                decoration: const InputDecoration(
                    hintText: "username",
                    filled: true,
                    fillColor: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                  controller: pass,
                  decoration: const InputDecoration(
                      hintText: "password",
                      filled: true,
                      fillColor: Colors.white),
                  obscureText: true),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: MaterialButton(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusColor: Colors.red[200],
                  color: Colors.red[400],
                  //child: const Text("LOGIN"),
                  onPressed: () {
                    BlocProvider.of<LoginBloc>(context).add(VerifyPassword( 
                        name: uname.text.toString(),
                        password: pass.text.toString(),
                        district: ''));
                    // if (pass.text.compareTo("password") == 0 &&
                    //     uname.text.compareTo("root") == 0) {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => const BottomNav()));
                    // } else {
                    //   Fluttertoast.showToast(
                    //     msg: "Invalid Credentials !",
                    //   );
                    // }
                  },
                  child: BlocConsumer<LoginBloc, LoginStates>(
                      builder: (state, context) {
                    if (state is Loading) {
                      return const CircularProgressIndicator();
                    }
                    return const Text("LOGIN");
                  }, listener: (context, state) {
                    if (state is LoginSuccess) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const BottomNavigationBarExample()));
                    } else {
                      Fluttertoast.showToast(msg: "Wrong pass or username");
                    }
                  }),
                ),
              ),
              MaterialButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const registration(),
                      ));
                },
                child: const Text("create an account"),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
