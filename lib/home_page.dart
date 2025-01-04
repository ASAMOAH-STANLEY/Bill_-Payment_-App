import 'package:flutter/material.dart';
import 'payment_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> bills = [
      'Electricity Bill',
      'Water Bill',
      'Internet Bill',
      'Gas Bill',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: bills.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(bills[index]),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentPage(billType: bills[index]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
