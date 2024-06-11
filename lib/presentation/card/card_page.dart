import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/domain/card/card_notifier.dart';
import 'package:my_app/domain/card/card_state.dart';
import 'package:my_app/presentation/card/card_view/card_widget.dart';
import 'package:my_app/presentation/card/short_filter_menubar/short_filter_menubar.dart';
import 'package:my_app/presentation/component/view/loading_view.dart';

class CardPage extends ConsumerStatefulWidget {
  const CardPage({super.key});

  static const routePath = 'card';
  static const routeName = 'card';

  @override
  ConsumerState<CardPage> createState() => _CardPageState();
}

class _CardPageState extends ConsumerState<CardPage> {
  final TextEditingController _searchKeywordController =
      TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final CardNotifier cardNotifier = ref.watch(cardNotifierProvider.notifier);
    _searchKeywordController.addListener(
      () => cardNotifier.changeSearchKeyword(_searchKeywordController.text),
    );
  }

  @override
  void dispose() {
    _searchKeywordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final CardState cardState = ref.watch(cardNotifierProvider);

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
                controller: _searchKeywordController,
                decoration: InputDecoration(
                  labelText: 'カード番号を入力して検索(スペースを抜く)',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: Visibility(
                    visible: _searchKeywordController.text.isNotEmpty,
                    child: IconButton(
                      onPressed: () {
                        _searchKeywordController.clear();
                      },
                      icon: const Icon(Icons.cancel),
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
                // 数字だけ入力できる
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              const ShortFilterMenubar(),
              const SizedBox(
                height: 32,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: data
                        .map(
                          (cardInfo) => CardWidget(
                            cardItem: cardInfo,
                            width: 350,
                          ),
                        )
                        .toList(),
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
