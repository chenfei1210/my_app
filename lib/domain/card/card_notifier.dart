import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/domain/card/card_service.dart';
import 'package:my_app/domain/card/card_state.dart';

final cardNotifierProvider =
    StateNotifierProvider.autoDispose<CardNotifier, CardState>(
  (ref) => CardNotifier(
    cardService: ref.read(cardService),
  )..init(),
);

class CardNotifier extends StateNotifier<CardState> {
  CardNotifier({
    required this.cardService,
  }) : super(const CardState());

  final CardService cardService;

  Future<void> init() async {
    if (!mounted) {
      return;
    }

    final cardItemList = await cardService.fetchCardItemAll();
    if (mounted) {
      state = state.copyWith(cardItemList: AsyncValue.data(cardItemList));
    }
  }

  Future<void> changeSearchKeyword(String searchKeyword) async {
    if (!mounted) {
      return;
    }
    final searchResult = searchKeyword.isEmpty
        ? await cardService.fetchCardItemAll()
        : await cardService.searchCardItemByNumber(searchKeyword);
    if (mounted) {
      state = state.copyWith(
        enteredSearchKeyword: searchKeyword,
        cardItemList: AsyncValue.data(searchResult),
      );
    }
  }
}
