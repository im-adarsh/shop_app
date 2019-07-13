import 'package:flutter/material.dart';

import 'screens/product_detail_screen.dart';
import 'screens/product_overview_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shop',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: ProductOverviewScreen(),
      routes: {
        ProductDetailScreen.routeName: (context) => ProductDetailScreen()
      },
    );
  }
}
