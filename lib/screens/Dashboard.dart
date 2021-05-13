import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_power/components/appbbar_default.dart';
import 'package:sales_power/screens/custumer/list.dart';
import 'package:sales_power/pages/product/list.dart';
import 'package:sales_power/screens/sale/list.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDefault(
        titulo: 'Olá, Maria!',
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 15.0, 5.0, 5.0),
                child: Material(
                  //color: Theme.of(context).accentColor,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ListOfProducts(),
                      ));
                    },
                    child: Container(
                      padding: EdgeInsets.all(22.0),
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.blueAccent, spreadRadius: 3)
                          ]),
                      child: Column(
                        children: [
                          Icon(
                            Icons.add_business,
                            color: Colors.white,
                            size: 24,
                          ),
                          Text(
                            'Produtos',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 15.0, 5.0, 5.0),
                child: Material(
                  //color: Theme.of(context).accentColor,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CustumerlistView(),
                      ));
                    },
                    child: Container(
                      padding: EdgeInsets.all(22.0),
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.blueAccent, spreadRadius: 3)
                          ]),
                      child: Column(
                        children: [
                          Icon(
                            Icons.supervised_user_circle_rounded,
                            color: Colors.white,
                            size: 24,
                          ),
                          Text(
                            'Clientes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 15.0, 5.0, 5.0),
                child: Material(
                  //color: Theme.of(context).accentColor,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ListOfSales(),
                      ));
                    },
                    child: Container(
                      padding: EdgeInsets.all(22.0),
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.blueAccent, spreadRadius: 3)
                          ]),
                      child: Column(
                        children: [
                          Icon(
                            Icons.add_shopping_cart_sharp,
                            color: Colors.white,
                            size: 24,
                          ),
                          Text(
                            'Pedidos',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 15.0, 5.0, 5.0),
                child: Material(
                  //color: Theme.of(context).accentColor,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(22.0),
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.blueAccent, spreadRadius: 3)
                          ]),
                      child: Column(
                        children: [
                          Icon(
                            Icons.addchart_rounded,
                            color: Colors.white,
                            size: 24,
                          ),
                          Text(
                            'Relatorios',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ],
      ),
    );
  }
}
