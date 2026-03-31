import 'package:flutter/material.dart';

class CollectionScreen extends StatefulWidget {
  @override
  _CollectionScreenState createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {

  List<String> customers = [];

  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  void addCollection() {
    String name = nameController.text;
    String amount = amountController.text;

    if (name.isNotEmpty && amount.isNotEmpty) {
      setState(() {
        customers.add("$name - Rs $amount");
      });

      nameController.clear();
      amountController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Collection"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [

            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Customer Name"),
            ),

            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: "Collection Amount"),
              keyboardType: TextInputType.number,
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: addCollection,
              child: Text("Add Collection"),
            ),

            SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: customers.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(customers[index]),
                    ),
                  );
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}
