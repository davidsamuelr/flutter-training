// Author: David Samuel
// MPE training

import 'package:flutter/material.dart';
import 'package:financial/financial.dart';
import 'package:planning/planning.dart';
import 'package:transparency/transparency.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            child: const Text('Financeiro'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Financial()), // rota manual
              );
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Planejamento'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Planning()),
              );
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Transparência'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Transparency()),
              );
            },
          ),
        ],
      )),
    );
  }
}
