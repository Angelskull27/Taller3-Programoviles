import 'package:flutter/material.dart';

class CatalogModel {
  static List<String> itemNames = [
    'iPhone 13',
    'Samsung Galaxy S22',
    'Google Pixel 7',
    'OnePlus 10',
    'Xiaomi Mi 12',
    'Sony Xperia 5',
    'LG Velvet 3',
    'Huawei P50',
    'Motorola Edge 3',
    'Nokia 10',
  ];

  static List<int> itemPrices = [
    1000, // iPhone 13
    900,  // Samsung Galaxy S22
    800,  // Google Pixel 7
    700,  // OnePlus 10
    600,  // Xiaomi Mi 12
    500,  // Sony Xperia 5
    400,  // LG Velvet 3
    300,  // Huawei P50
    200,  // Motorola Edge 3
    100,  // Nokia 10
  ];

  Item getById(int id) => Item(id, itemNames[id % itemNames.length], itemPrices[id % itemPrices.length]);
}

@immutable
class Item {
  final int id;
  final String name;
  final Color color;
  final int price;

  Item(this.id, this.name, this.price)
      : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
