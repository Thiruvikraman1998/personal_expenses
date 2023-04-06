import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

import '../models/transaction_model.dart';
import 'new_input.dart';
import 'transactions_list.dart';

class TransactionControl extends StatefulWidget {
  const TransactionControl({super.key});

  @override
  State<TransactionControl> createState() => _TransactionControlState();
}

class _TransactionControlState extends State<TransactionControl> {
  final List<Transaction> _userTransactions = [];

  void _addNewTransaction(String transactionTitle, double transactionAmount) {
    final newTransaction = Transaction(
        id: DateTime.now().toString(),
        title: transactionTitle,
        amount: transactionAmount,
        date: DateFormat('dd-MMM-yy').format(DateTime.now()));

    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpensesInput(addTransaction: _addNewTransaction),
        TransactionsList(
          transactions: _userTransactions,
        )
      ],
    );
  }
}
