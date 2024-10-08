import 'package:objectbox/objectbox.dart';

@Entity()
class Product {
  int id;
  final String name;
  final int qty;
  final int price;
  final int stock;
  Product({
    this.id = 0,
    required this.name,
    required this.qty,
    required this.price,
    required this.stock,
  });
}
