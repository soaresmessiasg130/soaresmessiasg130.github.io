import 'package:flutter/material.dart';
import 'package:messias_soares/responsive_widget.dart';

class ProfileInfo extends StatelessWidget {
  profileImage (context) => AnimatedContainer (
    duration: Duration(
      seconds: 2,
    ),
    height: ResponsiveWidget.isSmallScreen(context)
      ? MediaQuery.of(context).size.height * 0.25
      : MediaQuery.of(context).size.width * 0.25,
    
    width: ResponsiveWidget.isSmallScreen(context)
      ? MediaQuery.of(context).size.height * 0.25
      : MediaQuery.of(context).size.width * 0.25,
    decoration: BoxDecoration (
      backgroundBlendMode: BlendMode.luminosity,
      color: Colors.deepPurple,
      //borderRadius: BorderRadius.circular(40),
      shape: BoxShape.circle,
      image: DecorationImage (
        image: AssetImage(
          "blackholesemfundo.png"
        ),
        alignment: Alignment.center,
        fit: BoxFit.cover, 
      ),
    ),
  ); 

  final profileData = Column (
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text (
        "Hi there! My name is",
        textScaleFactor: 2,
        style: TextStyle (
          color: Colors.deepPurple,
        ),
      ),
      Text (
        "Messias\nSoares",
        textScaleFactor: 5,
        style: TextStyle (
          color: Colors.deepPurple,
        ),
      ),
      SizedBox (
        height: 10,
      ),
      Text (
        "Um desenvolvedor BackEnd que ama solucionar problemas.\n"
        "Buscando implementar ideias focando em qualidade e tempo!\n"
        "FrontEnd é minha paixão! Me sinto honrado em contribuir\n"
        "na experiência do usuário: desenvolvendo soluções completas.",
        softWrap: true,
        textScaleFactor: 1.5,
        style: TextStyle (
          color: Colors.white70,
          fontWeight: FontWeight.bold
        ),
      ),
      SizedBox (
        height: 20,
      ),
      Row (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RaisedButton (
            shape: StadiumBorder(),
            child: Text (
              "Resume"
            ),
            color: Colors.deepPurple,
            onPressed: () {},
            padding: EdgeInsets.all(20),
          ),
          SizedBox (
            width: 20,
          ),
          OutlineButton (
            borderSide: BorderSide (
              color: Colors.deepPurpleAccent,
            ),
            shape: StadiumBorder(),
            child: Text (
              "Say Hi!"
            ),
            color: Colors.deepPurple,
            onPressed: () {},
            padding: EdgeInsets.all(10),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget (
      largeScreen: Row (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          profileImage(context),
          profileData
        ],
      ),
      smallScreen: Column (
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          profileImage(context),
          SizedBox (
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData
        ],
      ),
    );
  }
}