import 'package:flutter/material.dart';
import 'package:flutter_finance/components/transaction_list.dart';
import 'package:flutter_finance/models/transaction.dart';
import 'package:flutter_finance/models/transaction_form.dart';

class TransactionUser extends StatefulWidget {
  TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transaction = [
    Transaction(
      id: 't1',
      title: 'Aluguel',
      value: 880.25,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Academia',
      value: 89.90,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(transactions: _transaction),
        TransactionForm(),
      ],
    );
  }
}