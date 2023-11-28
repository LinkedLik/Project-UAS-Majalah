import 'package:flutter/material.dart';

import 'Read.dart';

class TampilanHome extends StatefulWidget {
  const TampilanHome({super.key});

  @override
  State<TampilanHome> createState() => _TampilanHomeState();
}

class _TampilanHomeState extends State<TampilanHome> {
  final ScrollController geserbawah = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              fit: StackFit.passthrough,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 40),
                  child: Text(
                    "Macarium",
                    style: TextStyle(color: Colors.white, fontSize: 36),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 100, left: 20),
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 160),
                  child: DefaultTabController(
                    length: 5,
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      isScrollable: true,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey),
                      tabs: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("For You"),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("For You"),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("For You"),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("For You"),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("For You"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //Bagian 1
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 200),
                  child: Card(
                    borderOnForeground: true,
                    color: Colors.grey,
                    child: SizedBox(
                      height: 140,
                      width: 500,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 220, left: 20),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.deepOrange,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 226, left: 60),
                  child: Text(
                    "Liko Fernando",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 270, left: 20),
                  width: 200,
                  child: TextButton(
                    child: const Text(
                      "10 Visual that will teach you more than a 300-page-self-help-book",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Read();
                          },
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(top: 210, right: 20),
                  child: Card(
                    color: Colors.blueGrey,
                    child: SizedBox(
                      height: 80,
                      width: 140,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(top: 310, right: 20),
                  child: Icon(Icons.heart_broken),
                ),
                // Bagian 2
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 340),
                  child: Card(
                    borderOnForeground: true,
                    color: Colors.grey,
                    child: SizedBox(
                      height: 140,
                      width: 500,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 360, left: 20),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.deepOrange,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 366, left: 60),
                  child: Text(
                    "Liko Fernando",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 410, left: 20),
                  width: 200,
                  child: TextButton(
                    child: const Text(
                      "10 Visual that will teach you more than a 300-page-self-help-book",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Read();
                          },
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(top: 355, right: 20),
                  child: Card(
                    color: Colors.blueGrey,
                    child: SizedBox(
                      height: 80,
                      width: 140,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(top: 450, right: 20),
                  child: Icon(Icons.heart_broken),
                ),
                //Bagian 3
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 480),
                  child: Card(
                    borderOnForeground: true,
                    color: Colors.grey,
                    child: SizedBox(
                      height: 140,
                      width: 500,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 500, left: 20),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.deepOrange,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 506, left: 60),
                  child: Text(
                    "Liko Fernando",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 550, left: 20),
                  width: 200,
                  child: TextButton(
                    child: const Text(
                      "10 Visual that will teach you more than a 300-page-self-help-book",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Read();
                          },
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(top: 500, right: 20),
                  child: Card(
                    color: Colors.blueGrey,
                    child: SizedBox(
                      height: 80,
                      width: 140,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(top: 590, right: 20),
                  child: Icon(Icons.heart_broken),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
