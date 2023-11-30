import 'package:expanse_tacker/model/expense.dart';
import 'package:expanse_tacker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({
    super.key,
    required this.expenses,
    required this.onRemoveExpence,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpence;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) => Dismissible(
              key: ValueKey(expenses[index]),
              background: Container(
                color: Theme.of(context).colorScheme.error.withOpacity(0.67),
                margin: EdgeInsets.symmetric(
                  horizontal: Theme.of(context).cardTheme.margin!.horizontal,
                ),
              ),
              onDismissed: (direction) {
                onRemoveExpence(expenses[index]);
              },
              child: ExpenseItem(
                expenses[index],
              ),
            ));
  }
}
