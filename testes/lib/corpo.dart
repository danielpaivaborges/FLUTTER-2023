import 'package:flutter/material.dart';

class Corpo extends StatefulWidget {
  const Corpo({super.key});

  @override
  State<Corpo> createState() => _CorpoState();
}

class _CorpoState extends State<Corpo> {
  bool chave = true;
  String caminho =
      "https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png";

  void troca() {
    chave = !chave;
    chave
        ? caminho =
            "https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png"
        : caminho =
            "https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.transparent,
        width: double.infinity,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              caminho,
              width: 300,
              height: 300,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: troca,
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Clique aqui...",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
