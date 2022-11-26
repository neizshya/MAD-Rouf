import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override

  // varibale autoplay image
  List items = [
    'assets/gambar/Screenshot_1.png',
    'assets/gambar/Screenshot_2.png',
  ];

  String inkwell = '';
  int counter = 0;

  //Fungsi menambah value counter
  void incrementCounter() {
    // Melakukan perubahan state counter
    setState(() {
      counter++;
    });
  }

  //Fungsi mengurangi value counter
  void decrementCounter() {
    // Melakukan perubahan state counter
    setState(() {
      counter--;
    });
  }

  Widget build(BuildContext context) {
    // final counterModel = Provider.of<MyCounter>(context);
    return Scaffold(
      backgroundColor: Color(0xf19191E),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Image(image: AssetImage('assets/gambar/logo_2.png')),
                Text('Home',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)),
                Icon(
                  Icons.card_travel_rounded,
                  color: Colors.white,
                )
              ],
            ),
            // SizedBox(height: 12),

            // slider coursele

            CarouselSlider(
              items: items
                  .map((image) => Builder(
                        builder: (BuildContext context) {
                          return Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(image),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          );
                        },
                      ))
                  .toList(),
              options: CarouselOptions(
                height: 250,
                viewportFraction: 1,
                autoPlay: true,
              ),
            ),

            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Packages",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Container(
                            child: Row(children: [
                              Text(
                                "See All",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  size: 12, color: Colors.white)
                            ]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),

            //listview geser pinggir
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 5),
              width: 670,
              height: 180,
              // height: MediaQuery.of(context).size.height * 0.3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 5),
                      height: 80,
                      width: 150,
                      decoration: BoxDecoration(
                          color:
                              Color.fromARGB(250, 18, 30, 54).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(4)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "PAKET A",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ruangan Panas",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  Text(
                                    "Free Condom",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 49,
                          ),
                          InkWell(
                            onTap: () {
                              modalBawah(context);
                            },
                            child: Container(
                                padding: EdgeInsets.only(bottom: 15),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(21, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(4)),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Rp. 100.000, -",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "Add to Cart",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                          )
                        ],
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 5),
                      height: 190,
                      width: 150,
                      decoration: BoxDecoration(
                          color:
                              Color.fromARGB(250, 18, 30, 54).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(4)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "PAKET B",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            padding: EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ruangan AC",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Text(
                                  "Free Cewek",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 49,
                          ),
                          InkWell(
                            onTap: () {
                              modalBawah(context);
                            },
                            child: Container(
                                padding: EdgeInsets.only(bottom: 15),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(21, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(4)),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Rp. 120.000, -",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "Add to Cart",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                          )
                        ],
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 5),
                      height: 190,
                      width: 150,
                      decoration: BoxDecoration(
                          color:
                              Color.fromARGB(250, 18, 30, 54).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(4)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "PAKET A",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ruangan AC",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  Text(
                                    "Free Vapoor",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 49,
                          ),
                          InkWell(
                            onTap: () {
                              modalBawah(context);
                            },
                            child: Container(
                                padding: EdgeInsets.only(bottom: 15),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(21, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(4)),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Rp. 40.000, -",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "Add to Cart",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(height: 12),
            // list view bawah
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Menu",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Container(
                    child: Row(children: [
                      Text(
                        "See All",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded,
                          size: 12, color: Colors.white)
                    ]),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 5),
              width: 600,
              height: 240,
              // height: MediaQuery.of(context).size.height * 0.3,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.only(top: 5, left: 10),
                        height: 120,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(250, 18, 30, 54)
                                .withOpacity(0.5),
                            borderRadius: BorderRadius.circular(4)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Gillboys Gin (350) Ml",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        SizedBox(height: 12),
                                        Container(
                                          // padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Rp. 20.000, -",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                            'assets/gambar/minuman.png'),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(top: 12),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: decrementCounter,
                                                child: Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                      color: Color.fromARGB(
                                                          109, 74, 74, 74),
                                                    ),
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: Colors.white,
                                                      size: 15,
                                                    )),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "$counter",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              InkWell(
                                                onTap: incrementCounter,
                                                child: Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                      color: Color.fromARGB(
                                                          109, 74, 74, 74),
                                                    ),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 15,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ]),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.only(top: 5, left: 10),
                        height: 120,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(250, 18, 30, 54)
                                .withOpacity(0.5),
                            borderRadius: BorderRadius.circular(4)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Gillboys Gin (350) Ml",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        SizedBox(height: 12),
                                        Container(
                                          // padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Rp. 20.000, -",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                            'assets/gambar/minuman.png'),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(top: 12),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    print("object");
                                                  });
                                                },
                                                child: Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                      color: Color.fromARGB(
                                                          109, 74, 74, 74),
                                                    ),
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: Colors.white,
                                                      size: 15,
                                                    )),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "1",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    print("add");
                                                  });
                                                },
                                                child: Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                      color: Color.fromARGB(
                                                          109, 74, 74, 74),
                                                    ),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 15,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ]),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                ],
              ),
            ),

            //custom button bawahh
            // CustomNavigationBar(
            //   elevation: 3,

            //   items: [
            //     CustomNavigationBarItem(icon: Icon(Icons.home)),
            //     CustomNavigationBarItem(icon: Icon(Icons.shopping_bag)),
            //     CustomNavigationBarItem(icon: Icon(Icons.account_box)),
            //   ],
            // )
            SizedBox(
              height: 40,
            ),
            BottomNavigationBar(
              backgroundColor: Colors.black,
              unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
              selectedIconTheme: const IconThemeData(color: Colors.white),
              unselectedLabelStyle: TextStyle(color: Colors.grey[400]),
              selectedLabelStyle: const TextStyle(color: Colors.white),
              fixedColor: Colors.white,
              type: BottomNavigationBarType.fixed,

              // currentIndex: ,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_filled,
                      size: 28,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard),
                  label: 'Reservation',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_box), label: 'Account'),
              ],
            ),
          ]),

          // alamat
        ),
      )),
    );
  }

  void modalBawah(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Color(0xff19191e),
        context: context,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: SizedBox(
              height: 190,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("PAKET A",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 164, 164, 164),
                                      fontSize: 16)),
                              SizedBox(height: 21),
                              Text("TABLE",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 164, 164, 164),
                                      fontSize: 16)),
                              SizedBox(height: 21),
                              Text("TIME",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 164, 164, 164),
                                      fontSize: 16))
                            ],
                          )),
                      Container(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: decrementCounter,
                                  child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Color.fromARGB(109, 74, 74, 74),
                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        color:
                                            Color.fromARGB(255, 164, 164, 164),
                                        size: 15,
                                      )),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                // Text(
                                //   '$counter',
                                //   style: TextStyle(
                                //       color: Color.fromARGB(255, 164, 164, 164),
                                //       fontSize: 15),
                                // ),
                                Text('Nilai counter: $counter',
                                    style: TextStyle(fontSize: 20.0)),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  // onTap: () {
                                  //   setState(() {
                                  //     print("add");
                                  //   });
                                  // },
                                  onTap: incrementCounter,

                                  child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Color.fromARGB(109, 74, 74, 74),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 15,
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(height: 21),
                            Text("Table 4",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 164, 164, 164),
                                    fontSize: 16)),
                            SizedBox(height: 21),
                            Text("16:00",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 164, 164, 164),
                                    fontSize: 16))
                          ],
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(
                            255,
                            238,
                            233,
                            126,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "Done",
                          style: TextStyle(
                              color: Color.fromARGB(255, 33, 33, 33),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
