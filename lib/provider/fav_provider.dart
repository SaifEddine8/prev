
import 'package:flutter/material.dart';
import 'package:project_review/models/product_model.dart';

class FavProvider with ChangeNotifier
{
final List<ProductModel>_products=[
  // final List<ProductModel> products = [
  
];
// ];
List<ProductModel>get products=>_products;



void toggleFav(ProductModel product)
{if(_products.contains(product))
  {
    _products.add(product);
    
  }
  else
  {
    _products.remove(product);
  }
  notifyListeners();
}

}