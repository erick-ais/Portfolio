import 'package:flutter/material.dart';

class BookApp extends StatefulWidget {
  BookApp({Key? key}) : super(key: key);

  @override
  State<BookApp> createState() => _BookAppState();
}

class _BookAppState extends State<BookApp> {
  int quantidade = 0;
  double resultado = 10;
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

  void calcular() {
    setState(() {
      double total = double.parse(valorController.text);
      resultado = total * quantidade;
    });
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
          // QUANTIDADE DE AÇÕES.............................................
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: TextField(
              textAlign: TextAlign.center,
              controller: valorController,
              decoration: const InputDecoration(
                prefixText: 'R\$',
                hintText: '0,00',
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
          // TOTAL........................................................
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$quantidade Ações'),
              Text('$resultado'),
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
              Text('R\$ 1,26'),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Comprar',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.purple,
              onPrimary: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 14),
            ),
          ),
        ],
      ),
    );
  }
}
