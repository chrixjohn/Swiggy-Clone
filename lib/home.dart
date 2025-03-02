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
        title: const Text("flutter"),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Center(
            Container(
              color: const Color.fromARGB(255, 235, 186, 11),
              width: 220,
              height: 120,
              child: const Column(
                children: [
                  CircleAvatar(),
                  Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/th.jpg"),
                      ),
                      CircleAvatar(),
                      CircleAvatar()
                    ],
                  )),
                  CircleAvatar()
                ],
              ),
            ),
            //)
            SizedBox(
              height: 500,
              width: 500,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 50,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text((index + 1).toString()),
                        const CircleAvatar(),
                        const Text("chris")
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: 500,
              child: ListView(
                children: const <Widget>[
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                  ),
                  ListTile(
                    leading: Icon(Icons.photo_album),
                    title: Text('Album'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                  ),
                  ListTile(
                    leading: Icon(Icons.contacts),
                    title: Text('Contact'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Setting'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
        






















        // Container(
              //   child: Row(
              //     children: [
              //       Container(
              //         child: Row(
              //           children: const [
              //             // ColoredBox(
              //             //     color: Colors.orange,
              //             //     child: SizedBox(
              //             //       height: 300,
              //             //       width: 200,
              //             //     )),
              //             SizedBox(
              //               width: 100,
              //             ),
              //             ColoredBox(
              //                 color: Colors.orange,
              //                 child: SizedBox(
              //                   height: 250,
              //                   width: 200,
              //                 )),
              //             ColoredBox(
              //                 color: Colors.orange,
              //                 child: SizedBox(
              //                   height: 250,
              //                   width: 200,
              //                 ))
              //           ],
              //         ),
              //       )