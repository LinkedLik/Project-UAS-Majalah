import 'package:flutter/material.dart';
import 'package:proyek_uas/Database/user_command.dart';
import 'package:proyek_uas/Module/module_user.dart';
import 'package:proyek_uas/Read/tampilan_home.dart';
import 'package:proyek_uas/Sign/sign_up.dart';
import 'package:proyek_uas/Sign/socialmedia.dart';
import 'package:proyek_uas/navigasi.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Read/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController usernamefield = TextEditingController();
  TextEditingController passwordfield = TextEditingController();
  final formState = GlobalKey<FormState>();
  late UserCommand dbUser = UserCommand();
  final passwordFocus = FocusNode();
  var _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
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
              Form(
                key: formState,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          enabled: true,
                          controller: usernamefield,
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
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Username tidak boleh kosong";
                            }
                            return null;
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: passwordfield,
                          focusNode: passwordFocus,
                          obscureText: _isObscured,
                          decoration: const InputDecoration(
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
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password tidak boleh Kosong!";
                            }
                            return null;
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    TextButton(
                      onPressed: () async {
                        if (formState.currentState!.validate()) {
                          User? user = await dbUser.signIn(
                              usernamefield.text, passwordfield.text);
                          if (user != null) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Navigasi()));
                          } else {
                            print("Antara Email atau Password Salah");
                          }
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
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
                    TextButton(
                        onPressed: () async {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return SignUp();
                            }),
                          );
                        },
                        child: Text("Sign up"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
