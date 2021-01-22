import 'package:FlutterLiveTools/Models/person.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class httpMeth{

  final String userAgent = "";
  http.Client _inner;

  static Future<person> fetchOneUser() async {
    //check The Doc To More info
    final response = await http.get('http://dummy.restapiexample.com/api/v1/employees');

    if (response.statusCode == 200) {
      return person.fromJson(convert.jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  static Future<List> getAllData() async {
    //call this method on initState to run it first
    //use List.Generate to get all the data inside
    var url = 'http://dummy.restapiexample.com/api/v1/employees';
    http.Response response = await http.get(url);
    Map data = convert.jsonDecode(response.body);
    return data["data"];

  }

}