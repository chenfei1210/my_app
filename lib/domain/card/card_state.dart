import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app/infrastructure/model/card_item.dart';

part 'card_state.freezed.dart';

@freezed
class CardState with _$CardState {
  const factory CardState({
    @Default(AsyncValue.loading()) AsyncValue<List<CardItem>> cardItemList,
    @Default('') String enteredSearchKeyword,
    required Set<CardBrandFilterItem> cardBrandFilterSet,
  }) = _CardState;
  const CardState._();

  bool get isCardBrandFilterSelectedAll =>
      cardBrandFilterSet.every((element) => element.isSelected);
}

@freezed
class CardBrandFilterItem with _$CardBrandFilterItem {
  const factory CardBrandFilterItem({
    required CardBrand cardBrand,
    @Default(false) bool isSelected,
  }) = _CardBrandFilterItem;
}
