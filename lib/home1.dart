import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
// leading: CircleAvatar(backgroundColor: Colors.green,),
        title: const Text("Welcome Flutter"),
        actions: const [Icon(Icons.logout,
        
        ),

         Icon(Icons.logout_sharp),
        CircleAvatar(backgroundColor: Colors.green)
        
        ],
      ),
      drawer: const Drawer(),

body:
 SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),

            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "We are now delivering food groceries and other essentials.",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Food & Genie service (Mon-Sat) - 6:00 am to 9:00 pm. Groceries & Meat (Mon-Sat) - 6:00 am to 6:00 pm. Dairy (Mon-Sat) - 6:00 am to 6:00 pm (Sun) - 6:00 am to 12:00 pm",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            //*****************box ******************/
            const SizedBox(height: 30),
            Container(
              width: 380,
              height: 180,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 94, 0),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Restaurants",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "No-contact delivery available",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 50),
                          Row(
                            children: [
                              Text(
                                "View all",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 73,
                    backgroundImage: AssetImage("Assets/image.jpg"),
                  ),
                ],
              ),
            ),

            //**************** 3 boxes*********************//
            const SizedBox(height: 20),
            Stack(
              children: <Widget>[
                Row(
                  children: [
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          width: 118,
                          height: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('Assets/image1.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 94, 0),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                  ),
                                  child: const Text(
                                    "      Genie      ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(
                            width: 100,
                            height: 50,
                            child: Text(
                              "Anything you need, delivered",
                              style: TextStyle(fontSize: 11),
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          width: 118,
                          height: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('Assets/image2.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 94, 0),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                  ),
                                  child: const Text(
                                    "     Grocery     ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(
                            width: 100,
                            height: 50,
                            child: Text("Essentials delivered in 2 Hrs",
                                style: TextStyle(fontSize: 11),
                                textAlign: TextAlign.center)),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          width: 118,
                          height: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('Assets/image3.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 94, 0),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                  ),
                                  child: const Text(
                                    "       Meat      ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(
                            width: 100,
                            height: 50,
                            child: Text("Fresh meat delivered safe",
                                style: TextStyle(fontSize: 11),
                                textAlign: TextAlign.center)),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
