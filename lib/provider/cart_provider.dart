import 'package:flutter/material.dart';
import 'package:project_review/models/product_model.dart';

class CartProvider with ChangeNotifier {
  List<ProductModel> _cartItems = [];
  List<ProductModel> get cartItems => _cartItems;

  void addToCart(ProductModel product) {
    _cartItems.add(product);

    notifyListeners();
  }

  void removeFromCart(ProductModel product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
  
  void incrementQuantity(ProductModel product) {
    product.quantity++;
    notifyListeners();
  }
void decrementQuantity(ProductModel product) {
    if (product.quantity > 1) {
      product.quantity--;
      notifyListeners();
    }
  }
}