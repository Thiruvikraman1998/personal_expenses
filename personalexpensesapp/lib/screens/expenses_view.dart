import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personalexpensesapp/models/transaction_model.dart';
import 'package:personalexpensesapp/widgets/chart.dart';
import 'package:personalexpensesapp/widgets/expenses_card.dart';
import 'package:intl/intl.dart';
import 'package:personalexpensesapp/widgets/new_input.dart';
import 'package:personalexpensesapp/widgets/transactions_list.dart';

class ExpensesView extends StatefulWidget {
  const ExpensesView({super.key});

  @override
  State<ExpensesView> createState() => _ExpensesViewState();
}

class _ExpensesViewState extends State<ExpensesView> {
  final List<Transaction> _userTransactions = [];

  void _addNewTransaction(String transactionTitle, double transactionAmount) {
    final newTransaction = Transaction(
        id: DateTime.now().toString(),
        title: transactionTitle,
        amount: transactionAmount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  void _startNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return ExpensesInput(addTransaction: _addNewTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expenses App"),
        actions: [
          IconButton(
            onPressed: () => _startNewTransaction(context),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Chart(),
            const SizedBox(
              height: 20,
            ),
            TransactionsList(
              transactions: _userTransactions,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _startNewTransaction(context),
        label: const Text("Add Expenses"),
        icon: const Icon(Icons.add),
        enableFeedback: true,
      ),
    );
  }
}
