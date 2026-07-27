import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200]
      ),
      child:Column(
        mainAxisAlignment: .center,
        children: [
          Text('24% off shipping today\non bag purchases',style: TextStyle(fontSize: 20,fontWeight: .bold),),
          Text('By Kutuku Store',style: TextStyle(color: Colors.grey),)
        ],
      )
    );
  }
}