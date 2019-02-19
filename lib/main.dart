import 'package:flutter/material.dart';
//import 'package:inbrief/tabs.dart';
import 'package:inbrief/tab_clean.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'inBrief',
      theme: ThemeData(        
        primarySwatch: Colors.pink,
        primaryColor: Colors.pink[400]
      ),
      home: TabClean(),
    );
  }




}
