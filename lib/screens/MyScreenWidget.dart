import 'package:FlutterLiveTools/screens/Buttons/DefaultButton.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/11_broken_link.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class MyScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DefaultButton(
          text: "Hello",
          press: () {
            MaterialPageRoute(builder: (context) => BrokenLinkScreen());
          },
        ),
      ),
    );
  }
}
