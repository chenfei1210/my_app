import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    final CardNotifier cardNotifier = ref.watch(cardNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Card'),
      ),
      body: Center(
        child: cardState.cardItemList.when(
          data: (data) => Column(
            children: [
              TextField(
                decoration:
                    const InputDecoration(labelText: 'カード番号を入力して検索(スペースを抜く)'),
                keyboardType: TextInputType.number,
                // 数字だけ入力できる
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onChanged: (text) {
                  cardNotifier.onSearchKeywordChanged(text);
                },
              ),
              const SizedBox(
                height: 32,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...data.map(
                        (cardInfo) => CardWidget(
                          cardItem: cardInfo,
                          width: 350,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          error: (error, stackTrace) => const Text('ERROR'),
          loading: () => const LoadingView(),
        ),
      ),
    );
  }
}
