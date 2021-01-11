import 'package:FlutterLiveTools/screens/ErrorScreen/10_connection_lost.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/11_broken_link.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/12_artical_not_found.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/13_no_space.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/14_no_result_found.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/15_payment_faild.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/16_time_error.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/17_location_error.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/18_router_offline.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/1_no_connection.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/20_no_file.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/21_camera_access.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/2_404_error.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/3_something_went_wrong.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/4_file_not_found.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/6_error.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/7_error_2.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/8_404_error_2.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/9_location_access.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/19_connection_faild.dart';
import 'package:FlutterLiveTools/screens/ErrorScreen/5_something_wrong.dart';

import 'package:FlutterLiveTools/screens/E-commAPP/home/home_screen.dart';
import 'package:FlutterLiveTools/screens/LoginAPP/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

List<Widget> screenList = [
  WelcomeScreen(),
  HomeScreen(),
  NoConnectionScreen(),
  Error404Screen(),
  Error404Screen2(),
  SomethingWentWrongScreen(),
  FileNotFoundScreen(),
  SomethingWrongScreen(),
  ErrorScreen(),
  Error2Screen(),
  LocationAccessScreen(),
  ConnectionLostScreen(),
  BrokenLinkScreen(),
  ArticleNotFoundScreen(),
  NoSpaceScreen(),
  NoResultFoundScreen(),
  PaymentFaildScreen(),
  TimeErrorScreen(),
  LocationErrorScreen(),
  RouterOfflineScreen(),
  ConnectionFaildScreen(),
  NoFileScreen(),
  CameraAccessScreen()
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '20 Flutter Error State Pages',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // Swipe to check the next Screen
      home: PageView.builder(
          itemCount: screenList.length,
          itemBuilder: (context, index) {
            return screenList[index];
          }),
    );
  }
}
