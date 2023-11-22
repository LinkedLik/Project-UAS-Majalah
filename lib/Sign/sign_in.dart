import 'package:flutter/material.dart';
import 'package:proyek_uas/Sign/sign_up.dart';
import 'package:proyek_uas/Sign/socialmedia.dart';

import '../Read/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 80),
              child: Text(
                "Medium",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                "Welcome Back",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: TextField(
                enabled: true,
                controller: username,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: "Username",
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    fillColor: Colors.white,
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.key,
                      color: Colors.white,
                    ),
                    fillColor: Colors.white,
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.green),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: <Widget>[
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  TextButton(onPressed: () {}, child: Text("Sign up"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
