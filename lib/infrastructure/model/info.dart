import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app/infrastructure/model/card_item.dart';

part 'info.freezed.dart';
part 'info.g.dart';

@freezed
class Info with _$Info {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Info({
    @Default([]) final List<CardItem> cardList,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}
