import 'package:flutter/material.dart';
import 'package:sales_power/models/custumer.dart';

import 'form.dart';

class CustumerlistView extends StatefulWidget {
  @override
  _CustumerlistViewState createState() => _CustumerlistViewState();
}

class _CustumerlistViewState extends State<CustumerlistView> {
  var custumers = <Customer>[];

  _getCustomers() {
    var jsonData = [
      {
        "name": "Marilia Souza Viana",
        "email": "maria@gmail.com",
        "balance": 300.0,
        "cpfCnpj": "112.233.236-52",
      },
      {
        "name": "João Souza Viana",
        "email": "joao@gmail.com",
        "cpfCnpj": "112.233.236-52",
        "balance": 120.0,
      },
      {
        "name": "Aparecida Souza Pedroza",
        "email": "aparecida@gmail.com",
        "cpfCnpj": "112.233.236-52",
        "balance": 900.0,
      }
    ];
    for (var index in jsonData) {
      Customer customer =
          Customer(name: index["name"], email: index["email"] , balance: index["balance"], cpfCnpj: index["cpfCnpj"]);

      custumers.add(customer);
    }
  }

  _CustumerlistViewState() {
    _getCustomers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Clientes'),
      ),
      body: listOfCustumer(),
    );
  }

  listOfCustumer() {
    return ListView.builder(
      itemCount: custumers.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.tealAccent, //border color
            child: Padding(
              padding: const EdgeInsets.all(3.0), //border size
              child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: Text(
                      custumers[index].initial())),
            ),
          ),
          title: Text(custumers[index].name,
              style: TextStyle(fontSize: 20.0, color: Colors.black)),
          subtitle: Text('Limite: ' + custumers[index].balance.toString()),
          onTap: (){
             Navigator.push(context, new MaterialPageRoute(builder: (context) => CustomerDetailPage(custumers[index])));
          },


        );
      },
    );
  }
}
