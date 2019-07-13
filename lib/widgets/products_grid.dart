import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';
import 'product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedProducts = Provider.of<ProductsProvider>(context).items;

    return GridView.builder(
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
    );
  }
}
