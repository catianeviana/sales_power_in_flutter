import 'package:sales_power/models/custumer.dart';
import 'package:sales_power/models/sale_item.dart';

class Sale {
  Customer customer;
  List<SaleItem> itens;

  Sale({this.customer, this.itens = const []});

  DateTime get date_criation {
    return DateTime.now();
  }

  double get amount {
    return itens.
            map((i) => i.amount).
            reduce((t, a) => t + a);
  }
}
