import 'dart:convert' as convert;

import 'package:FlutterLiveTools/Models/person.dart';
import 'package:FlutterLiveTools/screens/Card/SpecialOfferCard.dart';
import 'package:FlutterLiveTools/screens/Presitence/httpMeth.dart';
import 'package:FlutterLiveTools/screens/Presitence/sqlLite.dart';
import 'package:FlutterLiveTools/screens/Presitence/sqlServer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'SizeConfig.dart';

class MyScreenWidget extends StatefulWidget {
  @override
  _MyScreenWidget createState() => _MyScreenWidget();
}

class _MyScreenWidget extends State<MyScreenWidget> {
  var name;
  List personList = [person];
  Future<person> _futureperson;

  @override
  Future<void> initState() async {
    super.initState();
    personList = httpMeth.getAllData() as List;
    //_futureperson = httpMeth.fetchOneUser();
    //sqlLite.DOFuntions();
    dynamic res = await sqlServer.connectToSqlSever();
    print(res);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            personList.length,
                (index) => SpecialOfferCard(
              category: personList[index]["employee_name"],
              image: "Image Banner 2.png",
              numOfBrands: 33,
              press: null,
            ),
          ),
        ),
      ),
    );
  }
}
