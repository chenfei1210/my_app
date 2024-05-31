import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/presentation/card/card_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  static const routePath = '/home';
  static const routeName = 'home';
  static const pageName = 'ホーム';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(pageName),
      ),
      body:  ListView(
            children: const [
              PageItem('Card', CardPage.routeName),
            ],
          ),
    );
  }
}

class PageItem extends StatelessWidget {
  final String title;
  final String routeName;
  const PageItem(this.title, this.routeName, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        title,
        style: const TextStyle(fontSize: 25),
      ),
      onPressed: () => context.goNamed(routeName),
    );
  }
}
