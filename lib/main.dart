import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/components/bottom_detail.dart';
import 'package:flutter_shoppingcart/components/selector_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          SelectorHeader(),
          Expanded(
            child: BottomDetail(),
          ),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
      ],
    );
  }
}
