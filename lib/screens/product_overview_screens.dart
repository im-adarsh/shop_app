import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Shop')),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.00),
        itemCount: loadedProducts.length,
        itemBuilder: (context, i) => ProductItem(loadedProducts[i].id,
            loadedProducts[i].title, loadedProducts[i].imgUrl),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
