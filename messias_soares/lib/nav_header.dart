import 'package:flutter/material.dart';
import 'package:messias_soares/ms_dot.dart';
import 'package:messias_soares/nav_button.dart';
import 'package:messias_soares/responsive_widget.dart';

class NavHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget (
      largeScreen: Row (
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
          ? MainAxisAlignment.start
          : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MsDot (),
          if (!ResponsiveWidget.isSmallScreen(context)) Row (
            children: [
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
        ],
      )
    );
  }
}