import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app/infrastructure/model/json_converter.dart';
import 'package:my_app/resources/assets/images.dart';

part 'card_item.freezed.dart';
part 'card_item.g.dart';

@freezed
class CardItem with _$CardItem {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CardItem({
    /// カード名
    @Default('') final String cardName,

    /// 発行企業
    @Default('') final String issuingCompany,

    /// ブランド
    @Default(CardBrand.other) @IntToCardBrandConverter() final CardBrand brand,

    /// カード区分
    @Default(CardClassification.other) @IntToCardClassificationConverter() final CardClassification classification,

    /// カード番号
    @Default('') final String number,

    /// 有効期限
    @StringToEffectiveDateConverter()
    @Default(EffectiveDate(month: '01', year: '01'))
    final EffectiveDate effectiveDate,

    /// 名義人
    @Default('') final String cardHolder,

    /// 4桁暗証番号
    @Default('') final String passcode,

    /// カード裏番号
    @Default('') final String cardVerificationValue,

    /// ショッピング利用可能枠
    @Default('') final String availableShoppingLimit,

    /// キャッシング利用可能枠
    @Default('') final String availableCashAdvanceLimit,

    /// 年会費
    @Default('') final String annualFee,

    /// 返済口座
    @Default('') final String repaymentAccount,
  }) = _CardItem;

  factory CardItem.fromJson(Map<String, dynamic> json) => _$CardItemFromJson(json);
}

enum CardBrand {
  visa(0, 'VISA', GlobalAssetImage.visaLogo),
  mastercard(1, 'Mastercard', GlobalAssetImage.mastercardLogo),
  jcb(2, 'JCB', GlobalAssetImage.jcbLogo),
  americanExpress(3, 'American Express', GlobalAssetImage.americanExpressLogo),
  unionPay(4, '銀聯', GlobalAssetImage.unionPayLogo),
  dinersClub(5, 'Diners Club', GlobalAssetImage.dinersClubLogo),
  other(9999, 'other', GlobalAssetImage.errorLogo),
  ;

  const CardBrand(
    this.value,
    this.name,
    this.logo,
  );

  final int value;
  final String name;
  final Widget logo;

  static CardBrand fromValue(int value) => CardBrand.values.firstWhere(
        (cardBrand) => cardBrand.value == value,
        orElse: () => CardBrand.other,
      );
}

enum CardClassification {
  credit(0, 'クレジットカード'),
  debit(1, 'デビットカード'),
  prepaid(2, 'プリペイドカード'),
  other(9999, 'other'),
  ;

  const CardClassification(
    this.value,
    this.name,
  );

  final int value;
  final String name;

  static CardClassification fromValue(int value) => CardClassification.values.firstWhere(
        (cardClassification) => cardClassification.value == value,
        orElse: () => CardClassification.other,
      );
}

class EffectiveDate {
  const EffectiveDate({
    required this.month,
    required this.year,
  });

  final String month;
  final String year;

  // from MM/YY
  factory EffectiveDate.parse(String str) => EffectiveDate(
        month: str.substring(0, 2),
        year: str.substring(3, 5),
      );

  @override
  String toString() => '$month/$year';
}
