import 'package:flutter/material.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            fit: StackFit.passthrough,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 50, left: 20),
                child: Text(
                  "Your Library",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 90, left: 20),
                child: Text(
                  "There is no friend as loyal as a book",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 140),
                child: Card(
                  color: Colors.grey,
                  child: SizedBox(
                    height: 300,
                    width: 360,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 200, left: 40),
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.deepOrange,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 210, left: 80),
                child: Text(
                  "Liko Fernando",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 250, left: 50),
                child: Text(
                  "Reading List",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50, top: 280),
                child: Text(
                  "n stories",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Card(
                  margin: EdgeInsets.only(top: 320, left: 17),
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
                  margin: EdgeInsets.only(top: 320, right: 17),
                  color: Colors.purple,
                  child: SizedBox(
                    height: 125,
                    width: 180,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
