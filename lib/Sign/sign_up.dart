import 'package:flutter/material.dart';
import 'package:proyek_uas/Database/user_command.dart';
import 'package:proyek_uas/Read/tampilan_home.dart';
import 'package:proyek_uas/Sign/sign_in.dart';
import 'package:proyek_uas/Sign/socialmedia.dart';
import 'package:proyek_uas/navigasi.dart';

import '../Module/module_user.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController usernamefield = TextEditingController();
  TextEditingController passwordfield = TextEditingController();
  TextEditingController passwordvalidation = TextEditingController();
  final passwordFocus = FocusNode();
  final usernameFocus = FocusNode();
  final validationFocus = FocusNode();
  final formState = GlobalKey<FormState>();
  UserCommand dbUser = UserCommand();
  //bagian hide password
  var _isObscured;
  var _isOser;

  @override
  void initState() {
    super.initState();
    _isObscured = true;
    _isOser = true;
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
                  "Join Medium",
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
                            if (value == null || value!.isEmpty) {
                              usernameFocus.requestFocus();
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
                          obscureText: _isObscured,
                          focusNode: passwordFocus,
                          controller: passwordfield,
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
                          validator: (value) {
                            if (value == null || value!.isEmpty) {
                              passwordFocus.requestFocus();
                              return "Password wajib diisi";
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
                          obscureText: _isObscured,
                          focusNode: validationFocus,
                          controller: passwordvalidation,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              hintText: "Password Validation",
                              prefixIcon: Icon(
                                Icons.key,
                                color: Colors.white,
                              ),
                              fillColor: Colors.white,
                              labelText: "Password Validation",
                              labelStyle: TextStyle(color: Colors.white)),
                          validator: (value) {
                            if (value == null || value!.isEmpty) {
                              passwordFocus.requestFocus();
                              return "Password wajib diisi";
                            }
                            if (value != passwordfield.text) {
                              validationFocus.requestFocus();
                              return "Password Berbeda!";
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
                            User user = User(
                              username: usernamefield.text,
                              password: passwordfield.text,
                            );
                            await dbUser.insertUser(user);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Navigasi()));
                          }
                        },
                        child: Text(
                          "Create Account",
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
                      "Already have an account?",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return SignIn();
                            }),
                          );
                        },
                        child: Text("Sign in"))
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
