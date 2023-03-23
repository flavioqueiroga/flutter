import 'package:expenses/components/waiting_image.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';


import 'trasaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final void Function(String) onRemove;

  TransactionList(this.transactions, this.onRemove);

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? WaitingImage(
            label: 'Nenhuma transaçao cadastrada',
            labelTextStyle: Theme.of(context).textTheme.headline6,
          )
        
        : ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (ctx, index) {
              final tr = transactions[index];
              return TransactionItem(tr: tr, onRemove: onRemove);
            },
          );
  }
}



