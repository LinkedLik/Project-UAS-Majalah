import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proyek_uas/Read/home.dart';

import '../navigasi.dart';

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
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
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 30, top: 40),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios, size: 40),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Home();
                          },
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 100, left: 20, right: 20),
                  child: Text(
                    "Advanced SQL topics for data enginners",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  width: 260,
                  margin: EdgeInsets.only(top: 170, left: 20),
                  child: Text(
                    "Advance SQL Techniques for Data Enginners Examples with Simple Dataset",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 230, left: 20),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.deepOrangeAccent,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 70, top: 230),
                  child: Text(
                    "Liko Fernando .",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 160, top: 215),
                  child: TextButton(
                    child: Text(
                      "Follow",
                      style: TextStyle(color: Colors.green),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 68, top: 250),
                  child: Text(
                    "11 mins Read . Apr 1, 2023",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(top: 230, right: 20),
                  child: Icon(
                    Icons.heart_broken,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Container(
                  width: 350,
                  margin: EdgeInsets.only(top: 280, left: 20),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur "
                      "adipiscing elit, sed do eiusmod tempor incididunt "
                      "ut labore et dolore magna aliqua. Ut enim ad minim veniam, "
                      "quis nostrud exercitation ullamco laboris nisi ut aliquip ex "
                      "ea commodo consequat. Duis aute irure dolor in reprehenderit "
                      "in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                      " Excepteur sint occaecat cupidatat non proident, sunt in culpa "
                      "qui officia deserunt mollit anim id est laborum.",
                      style: TextStyle(color: Colors.white)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 430),
                  child: Card(
                    color: Colors.grey,
                    child: SizedBox(
                      height: 180,
                      width: 340,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 620, left: 20),
                  child: Text(
                    "Our Sample",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  width: 350,
                  margin: EdgeInsets.only(top: 640, left: 20),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur "
                      "adipiscing elit, sed do eiusmod tempor incididunt "
                      "ut labore et dolore magna aliqua. Ut enim ad minim "
                      "veniam, quis nostrud exercitation ullamco laboris "
                      "nisi ut aliquip ex ea commodo consequat. ",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
