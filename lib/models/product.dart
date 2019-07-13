
import 'package:flutter/material.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final String imgUrl;
  final double price;
  bool isFavourite;

  Product({@required this.id,
    @required this.title,
    @required this.description,
    @required this.imgUrl,
    @required this.price,
    @required this.isFavourite});


}