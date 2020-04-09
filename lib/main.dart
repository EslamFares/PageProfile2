import 'package:flutter/material.dart';
import 'package:profilepage2/profile2/profile2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Page 2',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Profile2(),
    );
  }
}
