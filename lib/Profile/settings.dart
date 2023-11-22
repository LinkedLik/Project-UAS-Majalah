import 'package:flutter/material.dart';
import 'package:proyek_uas/Profile/profile.dart';
import 'package:proyek_uas/navigasi.dart';

import '../Sign/sign_in.dart';
import 'about.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Stack(fit: StackFit.passthrough, children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50, left: 20),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios, size: 40),
                color: Colors.white,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Navigasi();
                      },
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.black,
              margin: EdgeInsets.only(top: 300),
              child: Card(
                color: Colors.grey,
                child: SizedBox(
                  height: 80,
                  width: 380,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 320),
              child: TextButton(
                child: const Text(
                  "About",
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return About();
                      },
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.black,
              margin: EdgeInsets.only(top: 380),
              child: Card(
                color: Colors.grey,
                child: SizedBox(
                  height: 80,
                  width: 380,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 400),
              child: TextButton(
                child: const Text(
                  "Logout",
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignIn();
                      },
                    ),
                  );
                },
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
