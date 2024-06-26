import 'package:flutter/material.dart';
import 'package:expense_tracker_application/models/expense.dart';
import 'package:gap/gap.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(expense.title, style: Theme.of(context).textTheme.titleLarge,),
              const Gap(4.0),
              Row(
                children: [
                  Text('\$${expense.amount.toStringAsFixed(2)}'),
                  const Spacer(),
                  Row(children: [
                    Icon(categoryIcons[expense.category]),
                    const Gap(8.0),
                    Text(expense.formattedDate),
                  ],)
                ],
              )
            ],
          )),
    );
  }
}
