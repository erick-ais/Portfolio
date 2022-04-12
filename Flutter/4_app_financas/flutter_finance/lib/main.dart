import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeFinanceApp(),
    );
  }
}

class HomeFinanceApp extends StatefulWidget {
  HomeFinanceApp({Key? key}) : super(key: key);

  @override
  State<HomeFinanceApp> createState() => _HomeFinanceAppState();
}

class _HomeFinanceAppState extends State<HomeFinanceApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finance App 1.0'),
      ),
      body: Center(
        child: Text('Controle Financeiro'),
      ),
    );
  }
}
