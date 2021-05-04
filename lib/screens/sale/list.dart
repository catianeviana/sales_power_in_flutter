import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_power/components/appbbar_default.dart';
import 'package:sales_power/screens/sale/form.dart';

class ListOfSales extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ListOfSalesState();
  }
}

class ListOfSalesState extends State {
  List<String> _items = ["Item 1", "Item 2", "Item 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDefault(
        titulo: 'Lista de Pedidos',
      ),
      body: new Container(
        child: new ListView.builder(
          padding: new EdgeInsets.all(8.0),
          itemCount: _items.length,
          itemBuilder: (_, int index) {
            var item = _items[index];
            return new GestureDetector(
              onTap: () => _onDetail(item),
              child: new Item(item),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CreateSale(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _onDetail(String item) {
   // print("ITEM TAPPED: $item");
  }
}

class Item extends StatelessWidget {
  final String text;

  Item(this.text);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(8.0),
      child: new Center(
        child: new Text(this.text),
      ),
    );
  }
}
