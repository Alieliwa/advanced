import 'package:advanced/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';
class MyApp extends StatefulWidget {

    MyApp._internal() ; //named constractor
    static final MyApp _instance = MyApp._internal() ; //singleton or single instance
    factory MyApp()=> _instance; //factory


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
    );
  }
}