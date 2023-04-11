import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:personalexpensesapp/models/transaction_model.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  const Chart({super.key, this.recentTransactions});

  final List<Transaction>? recentTransactions;

  List<Map<String, dynamic>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      // Here we need transactions for last 7 days, so we subtract the index with todays date.
      // for eg, if the index is 2 then DateTime.now()- 2 is 2 days before today, so it adds the transaction to the place.
      // We always count starting from today and reduce for the last 7 days.

      double totalSum = 0.0;

      for (int i = 0; i < recentTransactions!.length; i++) {
        if (recentTransactions![i].date.day == weekDay.day &&
            recentTransactions![i].date.month == weekDay.month &&
            recentTransactions![i].date.year == weekDay.year) {
          totalSum += recentTransactions![i].amount;
        }
      }
      return {
        'day': DateFormat.E(weekDay),
        'amount': totalSum
      }; // here we pass the value of weekDay to the Dateformat Method te get the first letter of the weekday alone.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Row(),
    );
  }
}
