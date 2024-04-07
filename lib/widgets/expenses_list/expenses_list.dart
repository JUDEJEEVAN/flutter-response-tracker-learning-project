import 'package:expense_tracker_application/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_application/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses, required this.onRemoveExpense});

  final void Function(Expense expense) onRemoveExpense;
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: expenses.length, itemBuilder: (context, index) => Dismissible(background: Container(color: Theme.of(context).colorScheme.error), key: ValueKey(expenses[index].id), child: ExpenseItem(expense: expenses[index]), onDismissed: (direction) => onRemoveExpense(expenses[index],),));
  }
}