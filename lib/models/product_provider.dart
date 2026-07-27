
import 'package:flutter/material.dart';
import 'package:project_review/models/product_model.dart';

class ProductProvider with ChangeNotifier
{
final List<ProductModel>_products=[
  // final List<ProductModel> products = [
  ProductModel(
    image: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff',
    name: 'Air Max 270',
    marca: 'Nike',
    price: 129.99,
    category: Categories.Shoese
  ),
  ProductModel(
    image: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519',
    name: 'Ultraboost 22',
    marca: 'Adidas',
    price: 149.99,
    category: Categories.Shoese
  ),
  ProductModel(
    image: 'https://images.unsplash.com/photo-1608231387042-66d1773070a5',
    name: 'RS-X',
    marca: 'Puma',
    price: 109.99,
    category: Categories.Shoese
  ),
  ProductModel(
    image: 'https://images.unsplash.com/photo-1560769629-975ec94e6a86',
    name: '574 Classic',
    marca: 'New Balance',
    price: 99.99,
    category: Categories.Shoese
  ),
  ProductModel(
    image: 'https://images.unsplash.com/photo-1514989940723-e8e51635b782',
    name: 'Chuck Taylor',
    marca: 'Converse',
    price: 79.99,
    category: Categories.Shoese
  ),
  ProductModel(
    image: 'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77',
    name: 'Classic Leather',
    marca: 'Reebok',
    price: 89.99,
    category: Categories.Shoese
  ),
  ProductModel(
    image: "https://picsum.photos/id/1011/400/400",
    name: "Classic T-Shirt",
    marca: "Nike",
    price: 24.99,
    category: Categories.Colthes,
  ),
  ProductModel(
    image: "https://picsum.photos/id/1005/400/400",
    name: "Denim Jacket",
    marca: "Levi's",
    price: 79.99,
    category: Categories.Colthes,
  ),
  ProductModel(
    image: "https://picsum.photos/id/1012/400/400",
    name: "Hoodie",
    marca: "Adidas",
    price: 54.99,
    category: Categories.Colthes,
  ),

  // ================= Bags =================
  ProductModel(
    image: "https://picsum.photos/id/1025/400/400",
    name: "Travel Backpack",
    marca: "Puma",
    price: 69.99,
    category: Categories.Bags,
  ),
  ProductModel(
    image: "https://picsum.photos/id/1035/400/400",
    name: "Leather Handbag",
    marca: "Guess",
    price: 119.99,
    category: Categories.Bags,
  ),
  ProductModel(
    image: "https://picsum.photos/id/1044/400/400",
    name: "School Bag",
    marca: "American Tourister",
    price: 44.99,
    category: Categories.Bags,
  ),

  // ================= Electronics =================
  ProductModel(
    image: "https://picsum.photos/id/1060/400/400",
    name: "Wireless Headphones",
    marca: "Sony",
    price: 149.99,
    category: Categories.Electronics,
  ),
  ProductModel(
    image: "https://picsum.photos/id/1074/400/400",
    name: "Smart Watch",
    marca: "Samsung",
    price: 199.99,
    category: Categories.Electronics,
  ),
  ProductModel(
    image: "https://picsum.photos/id/1084/400/400",
    name: "Bluetooth Speaker",
    marca: "JBL",
    price: 89.99,
    category: Categories.Electronics,
  ),
];
// ];
List<ProductModel>get products=>_products;


void addProduct(ProductModel product)
{
  _products.add(product);
  notifyListeners();
}

void toggleFav(ProductModel product)
{
  int index=_products.indexOf(product);
  _products[index]=product.copywith(isFav: !product.isFav);
  notifyListeners();
}

}