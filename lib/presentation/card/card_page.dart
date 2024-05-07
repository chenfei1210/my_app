import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/domain/card/card_notifier.dart';
import 'package:my_app/domain/card/card_state.dart';
import 'package:my_app/presentation/card/card_view/card_widget.dart';
import 'package:my_app/presentation/component/view/loading_view.dart';

class CardPage extends ConsumerWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CardState cardState = ref.watch(cardNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Card'),
      ),
      body: Center(
        child: cardState.cardItemList.when(
          data: (data) => Column(
            children: data
                .map(
                  (cardInfo) => CardWidget(
                    cardItem: cardInfo,
                    width: 350,
                  ),
                )
                .toList(),
          ),
          error: (error, stackTrace) => const Text('ERROR'),
          loading: () => const LoadingView(),
        ),
      ),
    );
  }
}
