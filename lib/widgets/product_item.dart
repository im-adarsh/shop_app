import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product_provider.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
//  final String id;
//  final String tilte;
//  final String imgUrl;
//
//  ProductItem(this.id, this.tilte, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    final p = Provider.of<ProductProvider>(context);
    return ClipRRect(
      child: GridTile(
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                ProductDetailScreen.routeName,
                arguments: p.id,
              );
            },
            child: Image.network(
              p.imgUrl,
              fit: BoxFit.cover,
            )),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(p.isFavourite ? Icons.favorite : Icons.favorite_border),
            onPressed: () {
              p.toggleFavouriteStatus();
            },
            color: Colors.purple,
          ),
          title: Text(p.title, textAlign: TextAlign.center),
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
