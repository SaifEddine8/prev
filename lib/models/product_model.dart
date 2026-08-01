enum Categories { Colthes, Bags, Shoese, Electronics }

class ProductModel {
  final String image;
  final String name;
  final String marca;
  final double price;
  final Categories category;
  int quantity;

  ProductModel({
    required this.image,
    required this.marca,
    required this.name,
    required this.price,
    required this.category,
    this.quantity = 1,
  });

  ProductModel copywith({
    String? image,
    String? name,
    String? marca,
    double? price,
    Categories? category,
    bool? isFav,
  }) {
    return ProductModel(
      category: category ?? this.category,
      name: name ?? this.name,
      price: price ?? this.price,
      marca: marca ?? this.marca,
      image: image ?? this.image,
    );
  }
}
