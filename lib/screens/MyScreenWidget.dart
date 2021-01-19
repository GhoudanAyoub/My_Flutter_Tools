import 'package:FlutterLiveTools/screens/Buttons/DefaultButton.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/11_broken_link.dart';
import 'package:flutter/material.dart';

class MyScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Form(
                child: Column(
      children: [
        DefaultButton(
          text: "Continue",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BrokenLinkScreen()),
            );
          },
        ),
      ],
    ))));
  }
}
