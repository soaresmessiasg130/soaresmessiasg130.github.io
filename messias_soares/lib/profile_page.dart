import 'package:flutter/material.dart';
import 'package:messias_soares/nav_button.dart';
import 'package:messias_soares/nav_header.dart';
import 'package:messias_soares/profile_info.dart';
import 'package:messias_soares/responsive_widget.dart';
import 'package:messias_soares/social_info.dart';


class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget (
      largeScreen: Scaffold (
        backgroundColor: Colors.black,
        appBar: AppBar (
          elevation: 0.0,
          backgroundColor: Colors.black,
        ),
        drawer: ResponsiveWidget.isSmallScreen(context)
          ? Drawer (
            child: ListView (
              padding: const EdgeInsets.all(16),
              children: <Widget>[
                NavButton (
                  text: "about",
                  onPressed: () {},
                ),
                NavButton (
                  text: "work",
                  onPressed: () {},
                ),
                NavButton (
                  text: "contact",
                  onPressed: () {},
                )
              ],
            )
          ) 
          : null,
        body: SingleChildScrollView (
          child: AnimatedPadding (
            duration: Duration (
              seconds: 1
            ),
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.height * 0.1
            ),
            child: ResponsiveWidget (
              largeScreen: Column (
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  NavHeader (),
                  SizedBox (
                    height: MediaQuery.of(context).size.height * 0.1
                  ),
                  ProfileInfo (),
                  SizedBox (
                    height: MediaQuery.of(context).size.height * 0.2
                  ),
                  SocialInfo ()
                ]
              )
            )
          ),
        ),
      ),
    );
  }
}