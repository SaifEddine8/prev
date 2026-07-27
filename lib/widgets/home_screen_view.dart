import 'package:flutter/material.dart';
import 'package:project_review/Constant/colors_class.dart';

class HomeScreenView extends StatelessWidget {
  String title;
  bool isSetected;
  VoidCallback onTap;
   HomeScreenView({super.key,required this.title,required this.isSetected,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>onTap() ,
      child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: isSetected?ColorsClass.primaryColor:Colors.transparent,
                          width: 2
                        )
                      )
                    ),
                    child: Text(title,style: TextStyle(fontSize: 20,color: isSetected?Colors.black:Colors.grey),),
                    ),
    );
  }
}