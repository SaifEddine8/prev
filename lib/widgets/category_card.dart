import 'package:flutter/material.dart';
import 'package:project_review/Constant/colors_class.dart';
import 'package:project_review/Constant/style_class.dart';
import 'package:project_review/models/product_model.dart';
import 'package:project_review/models/product_provider.dart';
import 'package:provider/provider.dart';

class CategoryCard extends StatelessWidget {
  int index;
  Categories category;
   CategoryCard({super.key,required this.index,required this.category});

  @override
  Widget build(BuildContext context) {
    
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) => 
       Container(
        // width:width ,
        height: height/4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorsClass.secondaryColor
        ),
        child: 
        (index+1)%2!=0?
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            SizedBox(width: constraints.maxWidth/50,),
            Text(
              category.name,
              style: StyleClass.productName,
            ),
            SizedBox(
              height: constraints.maxHeight,
              width: constraints.maxWidth/2,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Image.network(context.watch<ProductProvider>().products.firstWhere((product)=>product.category==category).image,
                // width: MediaQuery.of(context).size.width/2.5,
                fit: BoxFit.cover,
                )),
            )
          ],
        )
        :
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            
            SizedBox(
              height: constraints.maxHeight,
              width: constraints.maxWidth/2,
              child: ClipRRect(
                
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Image.network(context.watch<ProductProvider>().products.firstWhere((product)=>product.category==category).image,
                // width: MediaQuery.of(context).size.width/2.5,
                fit: BoxFit.cover,
                )),
            ),
            Text(
              category.name,
              style: StyleClass.productName,
            ),
            SizedBox(width: constraints.maxWidth/50,),
          ],
        )
      
      ),
    );
  }
}