import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sales_power/components/appbbar_default.dart';
import 'package:sales_power/models/product.dart';
import 'package:sales_power/pages/product/form.dart';
import 'package:sales_power/pages/product/textDetail.dart';

class ListOfProducts extends StatefulWidget {
  @override
  _ListOfProductsState createState() => _ListOfProductsState();
}

class _ListOfProductsState extends State<ListOfProducts> {
  List<Product> items;
  var db = FirebaseFirestore.instance;

  StreamSubscription<QuerySnapshot> produtoinscricao;

  @override
  void initState() {
    super.initState();

    items = [];
    produtoinscricao?.cancel();

    produtoinscricao = db.collection("product").snapshots().listen((snapshot) {
      final List<Product> product = snapshot.docs
          .map(
            (documentSnapshot) => Product.fromJson(documentSnapshot.data()),
          )
          .toList();
      setState(() {
        this.items = product;
      });
    });
  }

  @override
  void dispose() {
    produtoinscricao.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarDefault(
        titulo: 'Lista de Produtos',
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: StreamBuilder<QuerySnapshot>(
            stream: getListOfProducts(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                default:
                  List<DocumentSnapshot> documents = snapshot.data.docs;
                  return ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                              margin: EdgeInsets.only(left: 4, top: 1, right: 4, bottom: 1),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blueAccent,
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: ListTile(
                                title: Text(items[index].description),
                                subtitle: Text(items[index].subTitle()),
                                leading: Icon(Icons.shopping_cart),
                              )),
                        );
                      });
              }
            },
          ))
        ],
      ),
    );
  }

  Stream<QuerySnapshot> getListOfProducts() {
    return FirebaseFirestore.instance.collection("produtos").snapshots();
  }
}

