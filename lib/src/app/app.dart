import 'package:brushwork_treasure/src/pages/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '首页'),
    );
  }
}
