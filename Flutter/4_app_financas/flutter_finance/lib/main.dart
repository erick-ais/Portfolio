import 'package:flutter/material.dart';
import 'package:flutter_finance/models/transaction.dart';

void main() {
  runApp(AppFinance());
}

class AppFinance extends StatefulWidget {
  AppFinance({Key? key}) : super(key: key);

  @override
  State<AppFinance> createState() => _AppFinanceState();
}

class _AppFinanceState extends State<AppFinance> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FinancePersonal(),
    );
  }
}

class FinancePersonal extends StatefulWidget {
  FinancePersonal({Key? key}) : super(key: key);

  @override
  State<FinancePersonal> createState() => _FinancePersonalState();
}

class _FinancePersonalState extends State<FinancePersonal> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Controle Financeiro 1.0'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              child: Text('Gráfico'),
              color: Colors.blue,
              elevation: 5,
            ),
          ),
          Column(
            children: _transaction.map((tr) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'R\$ ${tr.value.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tr.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          tr.date.toString(),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
