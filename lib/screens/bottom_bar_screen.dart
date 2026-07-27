import 'package:flutter/material.dart';
import 'package:project_review/screens/favorite_screen.dart';
import 'package:project_review/screens/home%20screen/home_landscape_screen.dart';
import 'package:project_review/screens/home%20screen/home_screen.dart';
import 'package:project_review/screens/my_order_screen.dart';
import 'package:project_review/screens/profile_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  Map<String,Widget>navBarItems={
    'Home':Icon(Icons.home),
    'My Order':Icon(Icons.shopping_bag),
    'Favorite':Icon(Icons.favorite),
    'My Profile':Icon(Icons.person)
  };
  List<Widget>screens=[
    HomeScreen(),
    MyOrderScreen(),
    FavoriteScreen(),
    
    ProfileScreen()
  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: IndexedStack(
          children:screens ,
          index: selectedIndex,
        ),
      ),
      bottomNavigationBar: 
      BottomNavigationBar(
        currentIndex: selectedIndex,
        type: .fixed,
        items:navBarItems.entries.map((item)=>BottomNavigationBarItem(icon:item.value,label: item.key )).toList() ,
        onTap: (value) => setState(() {
          selectedIndex=value;
        }),
        ),
    
      );
  }
}