import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_power/components/appbbar_default.dart';
import 'package:sales_power/models/product.dart';

class ListOfProducts extends StatelessWidget {
  final List products = [
    {
      "stock": 10,
      "price": 300.0,
      "fotoMain": "imageProduct3.jpg",
      "description":
      "LOREM IPSUM DOLOR SIT AMET"
    },
    {
      "stock": 12,
      "price": 120.0,
      "fotoMain": "imageProduct2.jpg",
      "description":
      "LOREM IPSUM DOLOR SIT AMET"
    },
    {
      "stock": 5,
      "price": 200.0,
      "fotoMain": "imageProduct3.jpg",
      "description":
      "LOREM IPSUM DOLOR SIT AMET"
    },
    {
      "stock": 6,
      "price": 800.0,
      "fotoMain": "imageProduct4.jpg",
      "description":
      "LOREM IPSUM DOLOR SIT AMET"
    },
    {
      "stock": 8,
      "price": 400.0,
      "fotoMain": "imageProduct5.jpg",
      "description":
      "LOREM IPSUM DOLOR SIT AMET"
    },
    {
      "stock": 9,
      "price": 250.0,
      "fotoMain": "imageProduct6.jpg",
      "description":
      "LOREM IPSUM DOLOR SIT AMET"
    },
    {
      "stock": 78,
      "price": 900.0,
      "fotoMain": "imageProduct7.jpg",
      "description":
      "LOREM IPSUM DOLOR SIT AMET"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarDefault(
        titulo: 'Lista de Produtos',

      ),
      body: ProductsGrid(products: products,),
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
    return Stack(
      alignment: Alignment.center,
      children: [
        ImageOfProduct(imageProduct: product.fotoMain),
        ContainerGradient(),
        DetailOfProduct(
            label: this.product.description,
            price: this.product.price,
            stock: this.product.stock),
      ],
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
      child:ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child:
        Image(
          fit: BoxFit.cover,
          image: AssetImage('lib/images/product/$imageProduct'),
        ),        
      )


    );
  }
}

class ContainerGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
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
    return Positioned(
      left: 5,
      bottom: 15,
      child: new Column (
        children: <Widget>[
          new Text (label, textAlign: TextAlign.justify, style: TextStyle(fontSize: 12.0, color: Colors.white), softWrap: true),
          new Text ('preço: ' + price.toString()+'  '+ 'Estoque: ' + stock.toString(), textAlign: TextAlign.justify,style: TextStyle(fontSize: 16.0, color: Colors.white),),
        ],
      ),

    );
  }
}

