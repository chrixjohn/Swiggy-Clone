import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_first_flutter_project/bloc/signupbloc.dart';
import 'package:my_first_flutter_project/login.dart';

class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController res = TextEditingController();
  TextEditingController district = TextEditingController();
  TextEditingController email = TextEditingController();
  //TextEditingController dob = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController nationality = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController name = TextEditingController();

  String dropdownvalue = 'Select District';

  // List of items in our dropdown menu
  var items = [
    'Select District',
    'Ktm',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              "create username",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: TextFormField(
                controller: gender,
                decoration: const InputDecoration(
                    hintText: "gender",
                    filled: true,
                    fillColor: Color.fromARGB(255, 221, 217, 217)),
              ),
            ),
            const Text(
              "create password",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: TextFormField(
                controller: pass,
                decoration: const InputDecoration(
                    hintText: "password",
                    filled: true,
                    fillColor: Color.fromARGB(255, 221, 217, 217)),
              ),
            ),
            const Text(
              "create restaurants name",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: TextFormField(
                controller: email,
                decoration: const InputDecoration(
                    hintText: "email",
                    filled: true,
                    fillColor: Color.fromARGB(255, 221, 217, 217)),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: TextFormField(
                controller: name,
                decoration: const InputDecoration(
                    hintText: "name",
                    filled: true,
                    fillColor: Color.fromARGB(255, 221, 217, 217)),
              ),
            ),

            // const Text(
            // "create district",
            // style: TextStyle(fontSize: 20),
            //),
            // SizedBox(
            //   width: 200,
            //   height: 50,
            //   child: TextFormField(
            //     controller: district,
            //     decoration: const InputDecoration(
            //         hintText: "district",
            //         filled: true,
            //         fillColor: Color.fromARGB(255, 221, 217, 217)),
            //   ),
            // ),
            // DropdownButton(
            //   // Initial Value
            //   value: dropdownvalue,

            //   // Down Arrow Icon
            //   icon: const Icon(Icons.keyboard_arrow_down),

            //   // Array list of items
            //   items: items.map((String items) {
            //     return DropdownMenuItem(
            //       value: items,
            //       child: Text(items),
            //     );
            //   }).toList(),
            //   // After selecting the desired option,it will
            //   // change button value to selected value
            //   onChanged: (String? newValue) {
            //     setState(() {
            //       dropdownvalue = newValue!;
            //     });
            //   },
            // ),
            SizedBox(
              width: 200,
              height: 50,
              child: TextFormField(
                controller: district,
                decoration: const InputDecoration(
                    hintText: "dis",
                    filled: true,
                    fillColor: Color.fromARGB(255, 221, 217, 217)),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: TextFormField(
                controller: address,
                decoration: const InputDecoration(
                    hintText: "addd",
                    filled: true,
                    fillColor: Color.fromARGB(255, 221, 217, 217)),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: TextFormField(
                controller: phoneNumber,
                decoration: const InputDecoration(
                    hintText: "phno",
                    filled: true,
                    fillColor: Color.fromARGB(255, 221, 217, 217)),
              ),
            ),
            // SizedBox(
            //   width: 200,
            //   height: 50,
            //   child: TextFormField(
            //     controller: dob,
            //     decoration: const InputDecoration(
            //         hintText: "dob",
            //         filled: true,
            //         fillColor: Color.fromARGB(255, 221, 217, 217)),
            //   ),
            // ),
            SizedBox(
              width: 200,
              height: 50,
              child: TextFormField(
                controller: state,
                decoration: const InputDecoration(
                    hintText: "state",
                    filled: true,
                    fillColor: Color.fromARGB(255, 221, 217, 217)),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: TextFormField(
                controller: nationality,
                decoration: const InputDecoration(
                    hintText: "nation",
                    filled: true,
                    fillColor: Color.fromARGB(255, 221, 217, 217)),
              ),
            ),
            MaterialButton(
              color: Colors.amber,
              //child: const Text("submit"),
              onPressed: () {
                if (name.text.isEmpty) {
                  Fluttertoast.showToast(msg: "enter username");
                } else if (pass.text.isEmpty) {
                  Fluttertoast.showToast(msg: "enter pass");
                } else {
                  BlocProvider.of<SignupBloc>(context).add(RegistrationMod(
                      name: name.text.toString(),
                      password: pass.text.toString(),
                      email: email.text.toString(),
                      phnNo: phoneNumber.text.toString(),
                      gender: gender.text.toString(),
                      address: address.text.toString(),
                      nationality: nationality.text.toString(),
                     // dob: dob.text.toString(),
                      district: district.text.toString(),
                      state: state.text.toString()));
                }
              },
              child: BlocConsumer<SignupBloc, SignupStates>(
                  builder: (state, context) {
                if (state is Fetc) {
                  return const CircularProgressIndicator();
                }
                return const Text("LOGIN");
              }, listener: (context, state) {
                if (state is SignupSuccess) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                } else {
                  Fluttertoast.showToast(msg: "Wrong pass or username");
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
