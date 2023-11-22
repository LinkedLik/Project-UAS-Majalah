import 'package:flutter/material.dart';
import 'package:proyek_uas/Profile/settings.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Stack(
            fit: StackFit.passthrough,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 40, left: 20),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, size: 40),
                  color: Colors.white,
                  onPressed: () {
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
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 100),
                child: Text(
                  "Creator :",
                  style: TextStyle(fontSize: 42, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 180),
                child: Text(
                  "Christopher Andrew",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 230),
                child: Text(
                  "825210107",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 280),
                child: Text(
                  "JustinHensel",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 330),
                child: Text(
                  "825210127",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 380),
                child: Text(
                  "Liko Fernando",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 430),
                child: Text(
                  "825210137",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 480),
                child: Text(
                  "Barry",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 530),
                child: Text(
                  "825210149",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
