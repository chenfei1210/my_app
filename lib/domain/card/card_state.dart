import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app/infrastructure/model/card_item.dart';

part 'card_state.freezed.dart';

@freezed
class CardState with _$CardState {
  const factory CardState({
    @Default(AsyncValue.loading()) AsyncValue<List<CardItem>> cardItemList,
  }) = _CardState;
}
