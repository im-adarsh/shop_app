import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductsProvider with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    Product(
      id: 'p5',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
  ];

  List<Product> get items {
    return _items;
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
