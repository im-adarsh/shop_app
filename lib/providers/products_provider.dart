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
    ProductProvider(
      id: 'p6',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    ProductProvider(
      id: 'p7',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    ProductProvider(
      id: 'p8',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    ProductProvider(
      id: 'p9',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    ProductProvider(
      id: 'p10',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    ProductProvider(
      id: 'p11',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    ProductProvider(
      id: 'p12',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    ProductProvider(
      id: 'p13',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    ProductProvider(
      id: 'p14',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
    ProductProvider(
      id: 'p15',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red',
      price: 29.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-O-VCzDfL.jpg',
    ),
  ];

  var _showFavouritesOnly = false;

  List<ProductProvider> get items {
    if (_showFavouritesOnly) {
      return _items.where((p) => p.isFavourite).toList();
    }
    return _items;
  }

  void showFavouritesOnly() {
    _showFavouritesOnly = true;
    notifyListeners();
  }

  void showAll() {
    _showFavouritesOnly = false;
    notifyListeners();
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }

  ProductProvider findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
