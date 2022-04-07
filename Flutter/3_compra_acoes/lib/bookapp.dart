import 'dart:ffi';

import 'package:flutter/material.dart';

class BookApp extends StatefulWidget {
  BookApp({Key? key}) : super(key: key);

  @override
  State<BookApp> createState() => _BookAppState();
}

class _BookAppState extends State<BookApp> {
  int quantidade = 0;
  final TextEditingController valorController = TextEditingController();

  void adicionar() {
    setState(() {
      quantidade++;
    });
  }

  void remover() {
    setState(() {
      quantidade--;
    });
  }

  void valortotal() {
    Double doubleValor = double.parse(valorController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'BBDC4',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Quantidade de ações',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: remover,
                child: const Icon(
                  Icons.remove_circle,
                  color: Colors.black,
                  size: 32,
                ),
              ),
              Text(
                '$quantidade',
                style: const TextStyle(
                  fontSize: 42,
                ),
              ),
              TextButton(
                onPressed: adicionar,
                child: const Icon(
                  Icons.add_circle,
                  color: Colors.black,
                  size: 32,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'Preço por unidade',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: TextField(
              textAlign: TextAlign.center,
              controller: valorController,
              decoration: const InputDecoration(
                hintText: '0,00',
                prefixText: 'R\$',
              ),
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$quantidade Ações'),
              Text('R\$ $valortotal()'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Corretagem'),
              Text('Zero'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Taxa B3'),
              Text('R\R 1,26'),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Comprar'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
