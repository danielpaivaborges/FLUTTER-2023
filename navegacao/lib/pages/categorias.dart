import 'package:flutter/material.dart';

class Categorias extends StatelessWidget {
  const Categorias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categorias"),
      ),
      body: Center(
        child: GestureDetector(
          onHorizontalDragEnd: (details) {
            Navigator.of(context).pop();
          },
          child: Container(
            width: double.infinity,
            color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Categorias"),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("voltar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
