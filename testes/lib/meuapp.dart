import 'package:flutter/material.dart';
import 'package:testes/corpo.dart';

class Meuapp extends StatelessWidget {
  const Meuapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SafeArea(
        child: Scaffold(
          endDrawer: Drawer(
            backgroundColor: Colors.green[200],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("faço nada"),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          appBar: AppBar(
            elevation: 15,
            centerTitle: true,
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.manage_accounts),
                ),
                const Text(
                  "Meu Programa",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            title: const Text("Meu Aplicativo"),
          ),
          body: const Corpo(),
        ),
      ),
    );
  }
}
