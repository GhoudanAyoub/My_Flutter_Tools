import 'package:FlutterLiveTools/screens/indicator/indicators.dart';
import 'package:flutter/material.dart';

class WidgetPage extends StatefulWidget {
  @override
  _WidgetPageState createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [circularProgress(context), linearProgress(context)],
        ),
      ),
    );
  }
}
