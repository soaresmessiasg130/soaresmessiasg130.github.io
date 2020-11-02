import 'package:flutter/material.dart';
import 'package:messias_soares/nav_button.dart';
import 'package:messias_soares/responsive_widget.dart';

class SocialInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget (
      largeScreen: Row (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NavButton (
                text: "GitHub",
                onPressed: () {},
                color: Colors.deepPurpleAccent,
              ),
              NavButton (
                text: "Youtube",
                onPressed: () {},
                color: Colors.deepPurpleAccent,
              ),
              NavButton (
                text: "Linkedin",
                onPressed: () {},
                color: Colors.deepPurpleAccent,
              ),
            ],
          ),
          Text (
            "Messias Soares © 2020",
            textAlign: TextAlign.center,
            style: TextStyle (
              color: Colors.grey,
            ),
          )
        ],
      ),
      smallScreen: Column (

      ),
    );
  }
}