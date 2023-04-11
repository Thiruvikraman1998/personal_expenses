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
    // return Column(
    //   children: transactions
    //       .map((transact) => ExpensesCard(
    //             id: transact.id,
    //             title: transact.title,
    //             amt: transact.amount.toString(),
    //             date: DateFormat.yMMMMd().format(transact.date),
    //           ))
    //       .toList(),
    // );
    return Container(
      height: 750,
      child: transactions.length == 0
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("No transactions added yet"),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 600,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/waiting.png"),
                    ),
                  ),
                )
              ],
            )
          : ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return ExpensesCard(
                  id: transactions[index].id,
                  title: transactions[index].title,
                  amt: transactions[index].amount.toStringAsFixed(2),
                  date: transactions[index].date,
                );
              },
            ),
    );
  }
}
