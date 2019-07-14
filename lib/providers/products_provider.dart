import 'package:flutter/material.dart';

import 'product_provider.dart';

class ProductsProvider with ChangeNotifier {
  final List<ProductProvider> _items = [
    ProductProvider(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    ProductProvider(
      id: 'p2',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    ProductProvider(
      id: 'p3',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    ProductProvider(
      id: 'p4',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    ProductProvider(
      id: 'p5',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
  ];

  List<ProductProvider> get items {
    return _items;
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }

  ProductProvider findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
