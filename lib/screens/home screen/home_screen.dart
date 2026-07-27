import 'package:flutter/material.dart';
import 'package:project_review/screens/home%20screen/home_landscape_screen.dart';
import 'package:project_review/screens/home%20screen/home_portrait_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context,orientation)
    {
      if(orientation==Orientation.portrait)
      {
        return HomePortraitScreen();
      }
      else
      {
        return HomeLandscapeScreen();
      }
    }
    );
  }
}