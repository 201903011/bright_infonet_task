import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: false,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () => _scaffoldKey.currentState!.openDrawer(),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, right: 14, left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 3,
                    width: 29,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                  ),
                  SizedBox(height: 7, width: 10),
                  Container(
                    height: 3,
                    width: 13,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.shopping_cart_outlined),
          )
        ],
        elevation: 0,
      ),
      drawer: MyDrawer(),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(
                  "New Products",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, left: 18.0, right: 18),
                      child: Container(
                        width: 450,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 229, 218),
                          borderRadius: BorderRadius.circular(23),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 150,
                                child: Text(
                                  "Purifying Hand Wash (Peach)",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(height: 25),
                              Container(
                                width: 200,
                                child: Text(
                                  "Eliminates dirt impurities and bacteria, leave hands feeling cean and soft",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 221, 188, 162)),
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "THB 3555.00",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 35),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: InkWell(
                                  onTap: () => {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 240, 129, 76),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 14.0, horizontal: 35),
                                      child: Text(
                                        "Add to cart",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 0,
                      child: Container(
                        height: 380,
                        width: 200,
                        child: Image(
                            image: AssetImage('assets/images/handwashed.png')),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(
                  "Our best-sellers",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16, top: 25, bottom: 16),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xffd1f3f5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image(
                                  image: AssetImage(
                                      'assets/images/handwashed.png'))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 14,
                              ),
                              Text(
                                "Hand Sanitizer Spray",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 150,
                                        child: Text(
                                          "(Apple) Removes 99.99% bacteria.",
                                          style: TextStyle(
                                            color: Color(0xffadd6da),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 12),
                                      Text(
                                        "THB 3555.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      InkWell(
                                        onTap: () => {},
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xff4eabb3),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 14.0, horizontal: 20),
                                            child: Text(
                                              "Buy",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16, top: 5, bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffcefee6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image(
                                  image: AssetImage(
                                      'assets/images/handwashed.png'))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 14,
                              ),
                              Text(
                                "Mosquito Repellent",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 150,
                                        child: Text(
                                          "Repel mosquitoes for your loved ones",
                                          style: TextStyle(
                                            color: Color(0xffb2ead1),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 12),
                                      Text(
                                        "THB 3555.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      InkWell(
                                        onTap: () => {},
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xff42b480),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 14.0, horizontal: 20),
                                            child: Text(
                                              "Buy",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
