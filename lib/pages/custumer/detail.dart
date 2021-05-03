import 'package:flutter/material.dart';
import 'package:sales_power/models/custumer.dart';

class CustomerDetailPage extends StatelessWidget {
  final Customer customer;

  CustomerDetailPage(this.customer);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(customer.name),
      ),
      body: CustomerDetail(),
    );
  }

  CustomerDetail() {
    return ListView(
      children: [
        Card(
          child: ListTile(
            title: Text('CPF/CNPJ'),
            subtitle: Text(customer.cpfCnpj, style: TextStyle(fontWeight: FontWeight.w500)),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Email'),
              subtitle: Text(customer.email, style: TextStyle(fontWeight: FontWeight.w500)),
          ),
        )
      ],

    );


  }
}
