import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personalexpensesapp/screens/expenses_view.dart';

void main(List<String> args) {
  runApp(const ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Expenses App"),
        ),
        body: ExpensesView(),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text("Add Expenses"),
          icon: const Icon(Icons.add),
          enableFeedback: true,
        ),
      ),
    );
  }
}
