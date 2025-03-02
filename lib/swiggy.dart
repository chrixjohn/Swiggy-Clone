import 'package:flutter/material.dart';

class SwiggyApp extends StatefulWidget {
  const SwiggyApp({super.key});

  @override
  State<SwiggyApp> createState() => _SwiggyAppState();
}

class _SwiggyAppState extends State<SwiggyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,

      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: const Text("Other", style: TextStyle(color: Colors.black)),
          actions: const [
            Padding(
              padding: EdgeInsets.all(11),
              child: Icon(
                Icons.local_offer,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(11),
              child: Text(
                "Offer",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ]),
      drawer: Drawer(
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              children: [
                SizedBox(height: 30),
                // Container(
                //   color: Colors.black,
                //   width: 10,
                //   height: 20,
                // ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: SizedBox(
                    width: 350,
                    child: Text(
                      "We are now delivering food groceries and other essentials.",
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(height: 30),
                // Container(
                //   color: Colors.black,
                //   width: 10,
                //   height: 20,
                // ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: SizedBox(
                    width: 350,
                    child: Text(
                      "Food & Genie service (Mon-Sat) - 6:00 am to 9:00 pm. Groceries & Meat (Mon-Sat) - 6:00 am to 6:00 pm. Dairy (Mon-Sat) - 6:00 am to 6:00 pm (Sun) - 6:00 am to 12:00 pm",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 370,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 255, 182, 64),
                    ),
                    transformAlignment: Alignment.center,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: 0, left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Restaurants",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "No-contact delivery available",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: 9, top: 25),
                                        ),
                                        Text(
                                          "View all",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 15),
                                        ),
                                        Icon(Icons.arrow_forward),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 50)),
                                  CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 50,
                                    backgroundImage:
                                        AssetImage("assets/th.jpg"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // Column(children: const [
            //   SizedBox(
            //     //color: Colors.black,
            //     height: 0,
            //   ),
            Row(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 370,
                    height: 150,
                    color: Colors.amber,
                    child: const Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("data"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("")],
                        )
                      ],
                    ),
                    // Column(
                    //  child :const Text("data")
                    // ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.thumb_up_sharp),
                  Text("   Top pick ups for you")
                ],
              ),
            ),
            SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: 50,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/th.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: 118,
                        height: 150,
                      ),
                    );
                  },
                ))

            // ]),
          ],
        ),
      ),
    );
  }
}

