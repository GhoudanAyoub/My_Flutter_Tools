import 'package:flutter/material.dart';
import 'dart:io';
import 'package:mysql1/mysql1.dart';

class sqlServer{

static Future connectToSqlSever() async {
  final conn = await MySqlConnection.connect(ConnectionSettings(host: 'http://127.0.0.1/', port: 3306, user: 'root', db: 'android'));

  // Create a table
  // await conn.query('CREATE TABLE users (id int NOT NULL AUTO_INCREMENT PRIMARY KEY, name varchar(255), email varchar(255), age int)');

  // Insert some data

  var result = await conn.query(
      'insert into users (id, name, pass) values (?, ?, ?)',
      [2, "bob@bob.com", "pass"]);
  print('Inserted row id=${result.insertId}');

  // Query the database using a parameterized query
  var results = await conn.query('select name, email from users where id = ?', [result.insertId]);
  for (var row in results) {
    print('Name: ${row[0]}, pass: ${row[1]}');
    return 'Name: ${row[0]}, pass: ${row[1]}';
  }

  // Finally, close the connection
  await conn.close();
}

}