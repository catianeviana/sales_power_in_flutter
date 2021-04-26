import 'package:flutter/material.dart';

import 'button_shopping_cart.dart';

class AppBarDefault extends StatelessWidget with PreferredSizeWidget {
  final String titulo;

  AppBarDefault({this.titulo});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: (Text(
        titulo,
        style: TextStyle(color: Colors.black),
      )),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: <Widget>[
        ButtonShoppingCart(),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
