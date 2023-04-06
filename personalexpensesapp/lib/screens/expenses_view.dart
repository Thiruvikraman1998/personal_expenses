import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personalexpensesapp/models/transaction_model.dart';
import 'package:personalexpensesapp/widgets/expenses_card.dart';
import 'package:intl/intl.dart';
import 'package:personalexpensesapp/widgets/new_input.dart';
import 'package:personalexpensesapp/widgets/transaction_control.dart';
import 'package:personalexpensesapp/widgets/transactions_list.dart';

class ExpensesView extends StatelessWidget {
  const ExpensesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Text("Expenses chart"),
          ),
          TransactionControl()
        ],
      ),
    );
  }
}
