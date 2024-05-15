import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/domain/home/home_notifier.dart';
import 'package:my_app/domain/home/home_state.dart';
import 'package:my_app/presentation/component/view/loading_view.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeState homeState = ref.watch(homeNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
      ),
      body: homeState.infoVersion.when(
        data: (infoVersion) => Column(
          children: [
            Text('info data version: $infoVersion'),
            Expanded(
              child: ListView(
                children: const [
                  PageItem('Card', '/card'),
                ],
              ),
            ),
          ],
        ),
        error: (error, stackTrace) => const Text('ERROR'),
        loading: () => const LoadingView(),
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
