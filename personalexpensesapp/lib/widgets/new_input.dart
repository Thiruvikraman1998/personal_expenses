import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class ExpensesInput extends StatefulWidget {
  final Function addTransaction;
  ExpensesInput({super.key, required this.addTransaction});

  @override
  State<ExpensesInput> createState() => _ExpensesInputState();
}

class _ExpensesInputState extends State<ExpensesInput> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    widget.addTransaction(
      titleController.text,
      double.parse(amountController.text),
    ); // here we parse the amountcontroller.text to double bcos the .text always makes as a text only so we parse it to double and send data to list.
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: "Title",
              ),
              onSubmitted: (value) => submitData(),
            ),
            TextField(
              controller: amountController,
              decoration: const InputDecoration(labelText: "Amount"),
              // keyboardType: TextInputType.number,  => use this for android only.
              keyboardType: const TextInputType.numberWithOptions(
                  decimal:
                      true), // use this for ios as it dont automatically allows decimals.
              onSubmitted: (value) => submitData(),
            ),
            TextButton(
              onPressed: submitData,
              child: Text(
                "Add Transaction",
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
