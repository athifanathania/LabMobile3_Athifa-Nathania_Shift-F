import 'package:flutter/material.dart';
import 'side_menu.dart';
import 'product_card.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  final List<String> products = const ['Shoes', 'Shirts', 'Bags', 'Watches'];

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Athifa Shop'),
        backgroundColor: Colors.pinkAccent,
      ),
      drawer: const SideMenu(),
      body: Container(
        color: Colors.pink[50],
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCard(productName: products[index]);
        },
        ),
      ),
    );
  }
}
