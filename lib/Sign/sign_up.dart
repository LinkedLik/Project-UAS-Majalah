import 'package:flutter/material.dart';
import 'package:proyek_uas/Sign/sign_in.dart';
import 'package:proyek_uas/Sign/socialmedia.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  "Medium",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 100),
                child: Text(
                  "Join Medium",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 140),
                child: SocialMedia.socialButtonRect(
                    "Sign Up With Google", Color(00000), Icons.search,
                    onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignIn();
                      },
                    ),
                  );
                }),
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 210),
                child: SocialMedia.socialButtonRect(
                    "Sign Up With Facebook", Color(00000), Icons.search,
                    onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignIn();
                      },
                    ),
                  );
                }),
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 290),
                child: SocialMedia.socialButtonRect(
                    "Sign Up With Twitter", Color(00000), Icons.search,
                    onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignIn();
                      },
                    ),
                  );
                }),
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 370),
                child: SocialMedia.socialButtonRect(
                    "Sign Up With Email", Color(00000), Icons.search,
                    onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignIn();
                      },
                    ),
                  );
                }),
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 450),
                child: SocialMedia.socialButtonRect(
                    "Sign Up With Apple", Color(00000), Icons.search,
                    onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignIn();
                      },
                    ),
                  );
                }),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 560, left: 90),
                child: Text("Don't have an account?",
                    style: TextStyle(color: Colors.white)),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(top: 544, right: 90),
                child: TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.green),
                  ),
                  onPressed: () {
                    //Manggil Sign In
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
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 720, left: 50),
                child: Text(
                  "By signing in, you agree to out",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 703, left: 125),
                child: TextButton(
                  child: const Text(
                    "Terms of Service",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                        fontFamily: "calibri"),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(top: 720, right: 65),
                child: Text(
                  "and",
                  style: TextStyle(
                      color: Colors.white, fontSize: 12, fontFamily: "calibri"),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 740, left: 55),
                child: Text(
                  "acknowledge that our",
                  style: TextStyle(
                      color: Colors.white, fontSize: 12, fontFamily: "calibri"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 724, left: 30),
                child: TextButton(
                  child: const Text(
                    "Privacy Policy",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                        fontFamily: "calibri"),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(top: 740, right: 64),
                child: Text(
                  "applies to you.",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "calibri", fontSize: 12),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
