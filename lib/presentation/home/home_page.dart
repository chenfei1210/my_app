import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/domain/home/home_notifier.dart';
import 'package:my_app/domain/home/home_state.dart';
import 'package:my_app/presentation/card/card_page.dart';
import 'package:my_app/presentation/component/view/loading_view.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  static const routePath = '/home';
  static const routeName = 'home';
  static const pageName = 'ホーム';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeState homeState = ref.watch(homeNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(pageName),
      ),
      body: homeState.infoVersion.when(
        data: (infoVersion) => Column(
          children: [
            Text('info data version: $infoVersion'),
            Expanded(
              child: ListView(
                children: const [
                  PageItem('Card', CardPage.routeName),
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
