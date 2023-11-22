import 'package:flutter/material.dart';
import 'package:proyek_uas/Profile/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Stack(fit: StackFit.passthrough, children: <Widget>[
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 40, top: 30),
              child: IconButton(
                icon: const Icon(
                  Icons.settings,
                  size: 40,
                ),
                color: Colors.white,
                onPressed: () {
                  // Panggil si Settings
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Settings();
                      },
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 110, left: 20),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.deepOrange,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 105, left: 100),
              child: Text(
                "Liko Fernando",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 140, left: 100),
              child: Text(
                "0 Followers . 1 Following",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 170),
              child: DefaultTabController(
                length: 3,
                child: TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(child: Text("Stories")),
                    Tab(child: Text("List")),
                    Tab(child: Text("About"))
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 240),
              child: Card(
                color: Colors.grey,
                child: SizedBox(
                  height: 300,
                  width: 360,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 280, left: 40),
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.deepOrange,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 280, left: 80),
              child: Text(
                "Liko Fernando",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 340, left: 50),
              child: Text(
                "Reading List",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, top: 370),
              child: Text(
                "n stories",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Card(
                margin: EdgeInsets.only(top: 420, left: 17),
                color: Colors.deepPurple,
                child: SizedBox(
                  height: 125,
                  width: 180,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Card(
                margin: EdgeInsets.only(top: 420, right: 17),
                color: Colors.purple,
                child: SizedBox(
                  height: 125,
                  width: 180,
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}
