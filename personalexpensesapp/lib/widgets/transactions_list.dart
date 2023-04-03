import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personalexpensesapp/models/transaction_model.dart';

import 'expenses_card.dart';

class TransactionsList extends StatelessWidget {
  final List<Transaction> transactions;
  const TransactionsList({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions
          .map((transact) => ExpensesCard(
                id: transact.id,
                title: transact.title,
                amt: transact.amount.toString(),
                date: DateFormat.yMMMMd().format(transact.date),
              ))
          .toList(),
    );
  }
}
