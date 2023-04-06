import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class ExpensesInput extends StatelessWidget {
  final Function addTransaction;
  ExpensesInput({super.key, required this.addTransaction});
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: "Title"),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: "Amount"),
            ),
            TextButton(
                onPressed: () {
                  addTransaction(
                      titleController.text,
                      double.parse(amountController
                          .text)); // here we parese the amountcontroller.text to double bcos the .text always makes as a text only so we parse it to double and send data to list.
                },
                child: const Text(
                  "Add Transaction",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
