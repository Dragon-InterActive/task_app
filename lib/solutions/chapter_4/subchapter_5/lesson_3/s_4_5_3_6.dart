import 'package:flutter/material.dart';

class S4536 extends StatelessWidget {
  const S4536({super.key});
  @override
  Widget build(BuildContext context) {
    //Liste erstellen
    final itemList = List<Product>.generate(
        10, (i) => Product(name: 'Produkt ${i + 1}', price: 0.99 + i));
    //Rückgabe des Widget
    return ShoppingList(items: itemList);
  }
}

//Produkt-Klasse
class Product {
  final String name;
  final double price;

  const Product({required this.name, required this.price});
}

//ListView - ShoppingList
class ShoppingList extends StatelessWidget {
  final List<Product> items;

  const ShoppingList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        String price = items[index].price.toString();
        return ListTile(
          title: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(items[index].name),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('$price €'),
                  ],
                ),
              ),
            ],
          ),
          leading: const Icon(Icons.shopping_cart),
        );
      },
    );
  }
}
