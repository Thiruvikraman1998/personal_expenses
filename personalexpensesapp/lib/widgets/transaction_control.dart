import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/transaction_model.dart';
import 'new_input.dart';
import 'transactions_list.dart';

class TransactionControl extends StatefulWidget {
  const TransactionControl({super.key});

  @override
  State<TransactionControl> createState() => _TransactionControlState();
}

class _TransactionControlState extends State<TransactionControl> {
  final List<Transaction> _userTransactions = [
    Transaction(id: "T123", title: "Bag", amount: 35.5, date: DateTime.now()),
    Transaction(id: "T134", title: "Fuel", amount: 10.7, date: DateTime.now()),
    Transaction(id: "T321", title: "Food", amount: 47.44, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpensesInput(),
        TransactionsList(
          transactions: _userTransactions,
        )
      ],
    );
  }
}
