import 'package:flutter/material.dart';

class Produtos extends StatelessWidget {
  const Produtos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Produtos"),
        ),
        body: const Center(
          child: Text("produtos"),
        ),
      ),
    );
  }
}
