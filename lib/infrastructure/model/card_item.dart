import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app/infrastructure/model/json_converter.dart';
import 'package:my_app/resources/assets/images.dart';

part 'card_item.freezed.dart';
part 'card_item.g.dart';

@freezed
class CardItem with _$CardItem {
  const CardItem._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CardItem({
    /// カード名
    @Default('') final String cardName,

    /// 発行企業
    @Default('') final String issuingCompany,

    /// ブランド
    @Default(CardBrand.other) @IntToCardBrandConverter() final CardBrand brand,

    /// カード区分
    @Default(CardClassification.other)
    @IntToCardClassificationConverter()
    final CardClassification classification,

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
    @Default(CurrencyVolume(0))
    @IntToCurrencyVolumeConverter()
    final CurrencyVolume availableShoppingLimit,

    /// キャッシング利用可能枠
    @Default(CurrencyVolume(0))
    @IntToCurrencyVolumeConverter()
    final CurrencyVolume availableCashAdvanceLimit,

    /// 年会費
    @Default(CurrencyVolume(0))
    @IntToCurrencyVolumeConverter()
    final CurrencyVolume annualFee,

    /// 返済口座
    @Default('') final String repaymentAccount,

    /// 備考
    @Default('') final String note,

    /// 管理サイト
    @Default('') final String managedSites,

    /// アカウント
    @Default('') final String account,

    /// パスワード
    @Default('') final String password,
  }) = _CardItem;

  factory CardItem.fromJson(Map<String, dynamic> json) =>
      _$CardItemFromJson(json);

  String get displayNumber {
    switch (brand) {
      case CardBrand.visa:
      case CardBrand.mastercard:
      case CardBrand.jcb:
      case CardBrand.unionPay:
        if (number.length != 16) {
          return 'ERROR';
        }
        final part1 = number.substring(0, 4);
        final part2 = number.substring(4, 8);
        final part3 = number.substring(8, 12);
        final part4 = number.substring(12);
        return [part1, part2, part3, part4].join(' ');
      case CardBrand.americanExpress:
        if (number.length != 15) {
          return 'ERROR';
        }
        final part1 = number.substring(0, 4);
        final part2 = number.substring(4, 10);
        final part3 = number.substring(10);
        return [part1, part2, part3].join(' ');
      case CardBrand.dinersClub:
        if (number.length != 14) {
          return 'ERROR';
        }
        final part1 = number.substring(0, 4);
        final part2 = number.substring(4, 10);
        final part3 = number.substring(10);
        return [part1, part2, part3].join(' ');
      case CardBrand.other:
        return 'ERROR';
    }
  }
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
  credit(0, 'クレジット'),
  debit(1, 'デビット'),
  prepaid(2, 'プリペイド'),
  other(9999, 'other'),
  ;

  const CardClassification(
    this.value,
    this.name,
  );

  final int value;
  final String name;

  static CardClassification fromValue(int value) =>
      CardClassification.values.firstWhere(
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

class CurrencyVolume {
  const CurrencyVolume(this.volume);

  final int volume;

  @override
  String toString() => volume >= 10000 ? '${volume / 10000} 万' : '$volume 万';
}
