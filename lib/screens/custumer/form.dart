import 'package:flutter/material.dart';
import 'package:sales_power/models/customer.dart';

class CustomerDetailPage extends StatelessWidget {
  final Customer customer;

  CustomerDetailPage(this.customer);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(customer.name),
      ),
      body: customerDetail(),
    );
  }

  customerDetail() {
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
