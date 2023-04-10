import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personalexpensesapp/screens/expenses_view.dart';
import 'package:personalexpensesapp/widgets/new_input.dart';

import 'models/transaction_model.dart';
import 'widgets/transactions_list.dart';

void main(List<String> args) {
  runApp(ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: ExpensesView(),
    );
  }
}
