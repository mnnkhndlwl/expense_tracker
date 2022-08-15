import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'Momos',
      amount: 30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Fruti',
      amount: 20,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(title: txTitle, amount: txAmount,date: DateTime.now(),id: DateTime.now().toString(),);

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //user Input
        NewTransaction(_addNewTransaction),
        // our Expenses
        TransactionList(_userTransactions),
      ],
    );
  }
}
