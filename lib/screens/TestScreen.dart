import 'package:FlutterLiveTools/screens/Buttons/DefaultButton.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/11_broken_link.dart';
import 'package:flutter/material.dart';




class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Lib"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DefaultButton(
              text: "Continue",
              press: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => BrokenLinkScreen()),);
              },
            ),
          ],
        ),
      ),
    );
  }
}
