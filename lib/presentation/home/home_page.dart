import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
      ),
      body: ListView(
        children: const [
          PageItem('Card', '/card'),
        ],
      ),
    );
  }
}

class PageItem extends StatelessWidget {
  final String title;
  final String route;
  const PageItem(this.title, this.route, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        title,
        style: const TextStyle(fontSize: 25),
      ),
      onPressed: () => Navigator.pushNamed(context, route),
    );
  }
}
