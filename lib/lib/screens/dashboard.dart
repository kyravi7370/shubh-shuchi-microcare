import 'package:flutter/material.dart';
import 'add_loan.dart';
import 'collection.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  double totalInvestment = 0;
  double totalLoan = 0;
  double totalCollection = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shubh Shuchi Microcare"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [

            card("Total Investment", totalInvestment),
            card("Total Loan", totalLoan),
            card("Total Collection", totalCollection),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddLoanScreen()),
                );
              },
              child: Text("Add Loan"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CollectionScreen()),
                );
              },
              child: Text("Collection"),
            ),

          ],
        ),
      ),
    );
  }

  Widget card(String title, double amount) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: Text("Rs $amount"),
      ),
    );
  }
}
