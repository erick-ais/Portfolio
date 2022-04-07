import 'package:flutter/material.dart';
import 'package:flutter_finance/components/transaction_user.dart';

void main() {
  runApp(
    AppFinance(),
  );
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controle Financeiro 1.0'),
      ),
      body: Column(
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
          TransactionUser(),
        ],
      ),
    );
  }
}
