import 'package:flutter/material.dart';
import 'package:navegacao/pages/categorias.dart';
import 'package:navegacao/pages/produtos.dart';

void main() => runApp(
      const MaterialApp(
        home: Myapp(),
      ),
    );

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Principal"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Produtos(),
                  ),
                );
              },
              child: const Text('Produtos'),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Categorias(),
                  ),
                );
              },
              child: const Text("Caategorias"),
            ),
          ],
        ),
      ),
    );
  }
}
