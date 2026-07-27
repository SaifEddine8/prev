import 'package:flutter/material.dart';
import 'package:project_review/Constant/style_class.dart';
import 'package:project_review/models/product_provider.dart';
import 'package:provider/provider.dart';

class CardProduct extends StatelessWidget {
  int index=-1;
  VoidCallback onTap;
   CardProduct({super.key,required this.index,required this.onTap});

  @override
  Widget build(BuildContext context) {
    final product=context.watch<ProductProvider>().products[index];
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(product.image,height: 130,),
              Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.grey[500],
                  radius: 15,
                  child: InkWell(
                    onTap:  onTap,
                    child: Icon(product.isFav?Icons.favorite:Icons.favorite_border_outlined,size: 18,color: Colors.white,))),
              )

            ],

          ),
          Column(
            children: [
              Text(product.name,style: StyleClass.productName,),
              Text(product.marca,style: StyleClass.productMarca,),
              Text('\$${product.price}',style: StyleClass.productPrice,)
            ],
          )

        ],
      ),
    );
  }
}