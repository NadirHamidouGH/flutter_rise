import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/user'),
              child: const Text('Go User Page'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go('/color'),
              child: const Text('Go Change color Page'),
            ),
          ],
        ),
      ),
    );
  }
}
