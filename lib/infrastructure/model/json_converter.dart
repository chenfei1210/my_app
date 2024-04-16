import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app/infrastructure/model/card_item.dart';

/// int -> CardBrand 変換用 JsonConverter
class IntToCardBrandConverter implements JsonConverter<CardBrand, int> {
  const IntToCardBrandConverter();

  @override
  CardBrand fromJson(int json) => CardBrand.fromValue(json);

  @override
  int toJson(CardBrand cardBrand) => cardBrand.value;
}

/// int -> CardClassification 変換用 JsonConverter
class IntToCardClassificationConverter implements JsonConverter<CardClassification, int> {
  const IntToCardClassificationConverter();

  @override
  CardClassification fromJson(int json) => CardClassification.fromValue(json);

  @override
  int toJson(CardClassification cardClassification) => cardClassification.value;
}

/// String -> EffectiveDate 変換用 JsonConverter
class StringToEffectiveDateConverter implements JsonConverter<EffectiveDate, String> {
  const StringToEffectiveDateConverter();

  @override
  EffectiveDate fromJson(String json) => EffectiveDate.parse(json);

  @override
  String toJson(EffectiveDate effectiveDate) => effectiveDate.toString();
}

/// String -> DateTime 変換用 JsonConverter
class StringToDateTimeConverter implements JsonConverter<DateTime, String> {
  const StringToDateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime dateTime) => dateTime.toIso8601String();
}
