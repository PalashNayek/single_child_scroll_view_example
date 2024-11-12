import 'package:flutter/material.dart';
import 'package:single_child_scroll_view_example/di/setup_locator.dart';
import 'package:single_child_scroll_view_example/screens/single_child_scroll_view_screen.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SingleChildScrollView Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SingleChildScrollViewScreen(),
    );
  }
}
