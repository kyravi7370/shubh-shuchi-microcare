import 'package:flutter/material.dart';

class AddLoanScreen extends StatefulWidget {
  @override
  _AddLoanScreenState createState() => _AddLoanScreenState();
}

class _AddLoanScreenState extends State<AddLoanScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController loanController = TextEditingController();
  TextEditingController profitController = TextEditingController();
  TextEditingController daysController = TextEditingController();

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
        title: Text("Add Loan"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [

            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Customer Name"),
            ),

            TextField(
              controller: mobileController,
              decoration: InputDecoration(labelText: "Mobile"),
              keyboardType: TextInputType.number,
            ),

            TextField(
              controller: loanController,
              decoration: InputDecoration(labelText: "Loan Amount"),
              keyboardType: TextInputType.number,
            ),

            TextField(
              controller: profitController,
              decoration: InputDecoration(labelText: "Profit Amount"),
              keyboardType: TextInputType.number,
            ),

            TextField(
              controller: daysController,
              decoration: InputDecoration(labelText: "Days"),
              keyboardType: TextInputType.number,
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: calculate,
              child: Text("Calculate Daily Collection"),
            ),

            SizedBox(height: 20),

            Text(
              "Daily Collection: Rs $dailyCollection",
              style: TextStyle(fontSize: 20),
            ),

          ],
        ),
      ),
    );
  }
}
