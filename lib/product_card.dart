import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productName;

  const ProductCard({required this.productName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink[100],
      margin: const EdgeInsets.all(10),
      child: ListTile(
        title:
            Text(productName, style: const TextStyle(color: Colors.pinkAccent)),
        trailing: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent),
          child: const Text('Beli'),
        ),
      ),
    );
  }
}
