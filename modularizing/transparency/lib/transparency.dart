import 'package:flutter/material.dart';

class Transparency extends StatefulWidget {
  const Transparency({super.key});

  @override
  State<Transparency> createState() => _TransparencyState();
}

class _TransparencyState extends State<Transparency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transparencia'), backgroundColor: Colors.orange[400],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Voltar!'),
        ),
      ),
    );
  }
}
