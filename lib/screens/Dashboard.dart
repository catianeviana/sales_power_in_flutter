import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_power/components/appbbar_default.dart';
import 'package:sales_power/screens/custumer/list.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBarDefault(titulo: 'Olá, Maria!',),
      body:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 5.0, 5.0),
              child: Material(
                //color: Theme.of(context).accentColor,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CustumerlistView(),
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
                        ]
                    ),
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
        ),

    );
  }
}

