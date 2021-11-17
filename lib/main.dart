import 'package:flutter/material.dart';
import 'package:todo_with_get_it/screens/home_view.dart';
import 'package:todo_with_get_it/service/locator.dart';

void main() {
  locator();
  runApp( MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
