import 'package:intl/intl.dart';

class Product {
  int id;
  String description;
  int stock;
  double price;
  String fotoMain;

  Product({this.id, this.description, this.stock, this.price, this.fotoMain});

  Product.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    stock = json['stock'];
    price = json['price'];
    fotoMain = json['fotoMain'];
  }
}

String formatPrice(double price) {
  final realFormat = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  return realFormat.format(price);
}
