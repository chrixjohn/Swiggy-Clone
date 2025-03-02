import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Welcome",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("jksacjkb"),
            const Icon(
              Icons.ac_unit_rounded,
              color: Colors.blue,
            ),
            Container(
              height: 30,
              width: 40,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 40,
              color: Colors.blue,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 40,
                  color: Colors.blue,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 30,
                  width: 40,
                  color: Colors.blue,
                ),
                Container(
                  height: 30,
                  width: 40,
                  color: Colors.blue,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 30,
                  width: 40,
                  color: Colors.blue,
                ),
                const Text("asdc"),
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/image.jpg"),
                )
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SizedBox(
                  height: 300,
                  width: 500,
                  child: Image.asset("assets/image.jpg")),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SizedBox(
                  height: 300,
                  width: 500,
                  child: Image.asset("assets/image.jpg")),
            ),
            Container(
              width: 100,
              height: 120,
              color: Colors.blue,
              child: Column(children: [
                SizedBox(
                    height: 80,
                    width: 60,
                    child: Image.asset("assets/image.jpg")),
                const Text("Hello")
              ]),
            )
          ],
        ),
      ),
    );
  }
}
