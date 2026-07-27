import 'package:flutter/material.dart';
import 'package:project_review/search%20screen/search_portrait_screen.dart';
import 'package:project_review/search%20screen/search_landscape_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context,orientation)
    {
      if(orientation==Orientation.portrait)
      {
        return SearchPortraitScreen();
      }
      else
      {
        return SearchLandscapeScreen();
      }
    }
    );
  }
}