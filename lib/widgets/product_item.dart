import 'package:flutter/material.dart';

import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String tilte;
  final String imgUrl;

  ProductItem(this.id, this.tilte, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: GridTile(
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                ProductDetailScreen.routeName,
                arguments: id,
              );
            },
            child: Image.network(
              imgUrl,
              fit: BoxFit.cover,
            )),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: null,
            color: Colors.purple,
          ),
          title: Text(tilte, textAlign: TextAlign.center),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: null,
            color: Colors.purple,
          ),
        ),
      ),
      borderRadius: BorderRadius.circular(5),
    );
  }
}
