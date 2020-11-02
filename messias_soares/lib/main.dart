import 'package:flutter/material.dart';
import 'package:messias_soares/profile_page.dart';

void main() => runApp(MyPortifolio());

class MyPortifolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.white,
          fontFamily: "GoogleSansRegular"),
      home: ProfilePage(),
    );
  }
}
