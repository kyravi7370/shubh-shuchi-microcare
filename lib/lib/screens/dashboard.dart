import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  final TextEditingController loanController = TextEditingController();
  final TextEditingController profitController = TextEditingController();
  final TextEditingController daysController = TextEditingController();

  double dailyCollection = 0;

  void calculate() {
    double loan = double.tryParse(loanController.text) ?? 0;
    double profit = double.tryParse(profitController.text) ?? 0;
    double days = double.tryParse(daysController.text) ?? 1;

    setState(() {
      dailyCollection = (loan + profit) / days;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shubh Shuchi Microcare"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: loanController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Loan Amount",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: profitController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Profit",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: daysController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Days",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: calculate,
              child: const Text("Calculate Daily Collection"),
            ),

            const SizedBox(height: 20),

            Text(
              "Daily Collection: ₹ $dailyCollection",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )

          ],
        ),
      ),
    );
  }
}
