import 'package:FlutterLiveTools/screens/LoginAPP/Signup/signup_screen.dart';
import 'package:FlutterLiveTools/screens/LoginAPP/components/already_have_an_account_acheck.dart';
import 'package:FlutterLiveTools/screens/LoginAPP/components/rounded_button.dart';
import 'package:FlutterLiveTools/screens/LoginAPP/components/rounded_input_field.dart';
import 'package:FlutterLiveTools/screens/LoginAPP/components/rounded_password_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String gmail, pass;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                gmail = value.toLowerCase();
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                pass = value.toLowerCase();
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                login(gmail, pass);
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  login(String gmail, String pass) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: gmail, password: pass);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
