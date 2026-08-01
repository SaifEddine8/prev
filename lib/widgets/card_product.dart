import 'package:flutter/material.dart';
import 'package:project_review/Constant/style_class.dart';
import 'package:project_review/models/product_model.dart';
import 'package:project_review/provider/cart_provider.dart';
import 'package:project_review/provider/fav_provider.dart';
import 'package:provider/provider.dart';

class CardProduct extends StatelessWidget {
  int index=-1;
  ProductModel product;
   CardProduct({super.key,required this.index,required this.product});

  @override
  Widget build(BuildContext context) {
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
                    onTap:  ()=>
                      context.read<FavProvider>().toggleFav(product)
                    ,
                    child: Icon(product.isFav?Icons.favorite:Icons.favorite_border_outlined,size: 18,color: Colors.white,))),
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor, 
                  radius: 15,
                  child: InkWell(
                    onTap: () {
                      context.read<CartProvider>().addToCart(product);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${product.name} added to cart!'),
                          duration: const Duration(seconds: 1),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
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