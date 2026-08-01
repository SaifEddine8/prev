import 'package:flutter/material.dart';
import 'package:project_review/provider/cart_provider.dart';
import 'package:project_review/provider/fav_provider.dart';
import 'package:project_review/screens/bottom_bar_screen.dart';
import 'package:project_review/screens/home%20screen/home_landscape_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CartProvider(),),
      ChangeNotifierProvider(create: (context) => FavProvider(),)
    ],
    child: MaterialApp(
      home: BottomBarScreen(),
    ),
  ));
}
