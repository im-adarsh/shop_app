import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String imgUrl;
  final double price;
  bool isFavourite;

  ProductProvider(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.imgUrl,
      @required this.price,
      @required this.isFavourite});
}
