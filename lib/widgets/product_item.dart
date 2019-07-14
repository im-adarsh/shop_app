import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../const/app_ui.dart';
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
          leading: Consumer<ProductProvider>(
              builder: (context, p, child) => IconButton(
                    icon: Icon(
                        p.isFavourite ? Icons.favorite : Icons.favorite_border),
                    onPressed: () {
                      p.toggleFavouriteStatus();
                    },
                    color: APP_MAIN_COLOR,
                  )),
          title: Text(p.title, textAlign: TextAlign.center),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: null,
            color: APP_MAIN_COLOR,
          ),
        ),
      ),
      borderRadius: BorderRadius.circular(5),
    );
  }
}
