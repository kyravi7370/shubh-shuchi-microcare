import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shubh Shuchi Microcare"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: const Text("Loan Management"),
                subtitle: const Text("Manage loans and customers"),
                leading: const Icon(Icons.account_balance),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Daily Collection"),
                subtitle: const Text("Track daily payments"),
                leading: const Icon(Icons.calendar_today),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Reports"),
                subtitle: const Text("View financial reports"),
                leading: const Icon(Icons.bar_chart),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
