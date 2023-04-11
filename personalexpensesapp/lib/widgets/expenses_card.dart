import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpensesCard extends StatelessWidget {
  final String id;
  final String title;
  final String amt;
  final DateTime date;
  const ExpensesCard(
      {super.key,
      required this.id,
      required this.title,
      required this.amt,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 85,
        child: Row(
          children: [
            Container(
              height: 55,
              width: 55,
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Text(
                  "\$$amt",
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  DateFormat.yMMMd().format(date),
                  style: TextStyle(color: Colors.grey[700]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
