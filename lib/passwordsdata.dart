import 'package:flutter/material.dart';

class PasswordsData extends StatelessWidget {
  final List<String> products;
  PasswordsData(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('images/mc2.jpg'),
          Text(products[index], style: TextStyle(color: Colors.deepPurple))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }
}