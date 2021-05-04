import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sales_power/components/appbbar_default.dart';
import 'package:sales_power/models/product.dart';
import 'package:sales_power/screens/product/form.dart';
import 'package:sales_power/screens/product/textDetail.dart';

class ListOfProducts extends StatelessWidget {
  final List products = [
    {
      "stock": 10,
      "price": 300.0,
      "fotoMain": "imageProduct3.jpg",
      "description": "LOREM IPSUM DOLOR SIT AMET"
    },
    {
      "stock": 12,
      "price": 120.0,
      "fotoMain": "imageProduct2.jpg",
      "description": "LOREM IPSUM DOLOR SIT AMET"
    },
    {
      "stock": 5,
      "price": 200.0,
      "fotoMain": "imageProduct3.jpg",
      "description": "LOREM IPSUM DOLOR SIT AMET"
    },
    {
      "stock": 6,
      "price": 800.0,
      "fotoMain": "imageProduct4.jpg",
      "description": "LOREM IPSUM DOLOR SIT AMET"
    },
    {
      "stock": 8,
      "price": 400.0,
      "fotoMain": "imageProduct5.jpg",
      "description": "LOREM IPSUM DOLOR SIT AMET"
    },
    {
      "stock": 9,
      "price": 250.0,
      "fotoMain": "imageProduct6.jpg",
      "description": "LOREM IPSUM DOLOR SIT AMET"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarDefault(
        titulo: 'Lista de Produtos',
      ),
      body: ProductsGrid(
        products: products,
      ),
    );
  }
}

class ProductsGrid extends StatelessWidget {
  final products;

  const ProductsGrid({this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int indice) {
        final product = Product.fromJson(products[indice]);
        return ItemOfProduct(product: product);
      },
    );
  }
}

class ItemOfProduct extends StatelessWidget {
  final Product product;

  ItemOfProduct({this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetailPage(product: product)));
      },
      child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(spreadRadius: 8, blurRadius: 8, color: Colors.black12),
          ]),
          margin: EdgeInsets.all(3),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              alignment: Alignment.center,
              children: [
                ImageOfProduct(imageProduct: product.fotoMain),
                ContainerGradient(),
                DetailOfProduct(
                    label: this.product.description,
                    price: this.product.price,
                    stock: this.product.stock),
              ],
            ),
          )),
    );
  }
}

class ImageOfProduct extends StatelessWidget {
  final String imageProduct;

  ImageOfProduct({this.imageProduct});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5,
      right: 5,
      top: 5,
      left: 5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage('lib/images/product/$imageProduct'),
        ),
      ),
    );
  }
}

class ContainerGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, Color.fromRGBO(66, 165, 245, 1.0)],
        ),
      ),
    );
  }
}

class DetailOfProduct extends StatelessWidget {
  final String label;
  final double price;
  final int stock;

  DetailOfProduct({this.label, this.price, this.stock});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 130, left: 2, right: 0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextDetail(
              label: this.label, style: Theme.of(context).textTheme.headline2),
          TextDetail(
              label: 'Preço: ' +formatPrice(price)+
                  '  Estoque: ' +
                  this.stock.toString(),
              style: Theme.of(context).textTheme.headline3),
        ],
      ),
    );
  }
}
