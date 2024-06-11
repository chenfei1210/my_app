import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/domain/card/card_service.dart';
import 'package:my_app/domain/card/card_state.dart';
import 'package:my_app/infrastructure/model/card_item.dart';

final cardNotifierProvider = StateNotifierProvider.autoDispose<CardNotifier, CardState>(
  (ref) => CardNotifier(
    cardService: ref.read(cardService),
  )..init(),
);

class CardNotifier extends StateNotifier<CardState> {
  CardNotifier({
    required this.cardService,
  }) : super(const CardState(cardBrandFilterSet: {}));

  static final effectiveCardBrandSet = CardBrand.values.toSet()
    ..remove(CardBrand.other);

  final CardService cardService;

  Future<void> init() async {
    final cardItemList = await cardService.fetchCardItemAll();

    final initCardBrandSet = effectiveCardBrandSet
        .map((cardBrand) => CardBrandFilterItem(
              cardBrand: cardBrand,
              isSelected: true,
            ))
        .toSet();

    if (mounted) {
      state = state.copyWith(
        cardItemList: AsyncValue.data(cardItemList),
        cardBrandFilterSet: initCardBrandSet,
      );
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

  void selectedAll() {
    final newCardBrandSet = state.cardBrandFilterSet
        .map((cardBrandFilterItem) =>
            cardBrandFilterItem.copyWith(isSelected: true))
        .toSet();

    if (mounted) {
      state = state.copyWith(cardBrandFilterSet: newCardBrandSet);
    }
  }

  void unSelectedAll() {
    final newCardBrandSet = state.cardBrandFilterSet
        .map((cardBrandFilterItem) =>
            cardBrandFilterItem.copyWith(isSelected: false))
        .toSet();

    if (mounted) {
      state = state.copyWith(cardBrandFilterSet: newCardBrandSet);
    }
  }

  void selected(CardBrandFilterItem cardBrandFilterItem) {
    var newCardBrandSet = state.cardBrandFilterSet
        .map((element) => element.cardBrand == cardBrandFilterItem.cardBrand
            ? element.copyWith(isSelected: true)
            : element)
        .toSet();

    if (mounted) {
      state = state.copyWith(cardBrandFilterSet: newCardBrandSet);
    }
  }

  void unSelected(CardBrandFilterItem cardBrandFilterItem) {
    var newCardBrandSet = state.cardBrandFilterSet
        .map((element) => element.cardBrand == cardBrandFilterItem.cardBrand
            ? element.copyWith(isSelected: false)
            : element)
        .toSet();

    if (mounted) {
      state = state.copyWith(cardBrandFilterSet: newCardBrandSet);
    }
  }
}
