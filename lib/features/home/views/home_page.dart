import 'package:flutter/material.dart';
import 'package:pelis_rate/features/utils/drawer/drawer_pelis_rate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'PelisRate',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: const DrawerPelisRate(),
      body: const Center(
        child: Text('Welcome to Pelis Rate!'),
      ),
    );
  }
}
