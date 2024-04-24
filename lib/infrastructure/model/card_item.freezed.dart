// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardItem _$CardItemFromJson(Map<String, dynamic> json) {
  return _CardItem.fromJson(json);
}

/// @nodoc
mixin _$CardItem {
  /// カード名
  String get cardName => throw _privateConstructorUsedError;

  /// 発行企業
  String get issuingCompany => throw _privateConstructorUsedError;

  /// ブランド
  @IntToCardBrandConverter()
  CardBrand get brand => throw _privateConstructorUsedError;

  /// カード区分
  @IntToCardClassificationConverter()
  CardClassification get classification => throw _privateConstructorUsedError;

  /// カード番号
  String get number => throw _privateConstructorUsedError;

  /// 有効期限
  @StringToEffectiveDateConverter()
  EffectiveDate get effectiveDate => throw _privateConstructorUsedError;

  /// 名義人
  String get cardHolder => throw _privateConstructorUsedError;

  /// 4桁暗証番号
  String get passcode => throw _privateConstructorUsedError;

  /// カード裏番号
  String get cardVerificationValue => throw _privateConstructorUsedError;

  /// ショッピング利用可能枠
  @IntToCurrencyVolumeConverter()
  CurrencyVolume get availableShoppingLimit =>
      throw _privateConstructorUsedError;

  /// キャッシング利用可能枠
  @IntToCurrencyVolumeConverter()
  CurrencyVolume get availableCashAdvanceLimit =>
      throw _privateConstructorUsedError;

  /// 年会費
  @IntToCurrencyVolumeConverter()
  CurrencyVolume get annualFee => throw _privateConstructorUsedError;

  /// 返済口座
  String get repaymentAccount => throw _privateConstructorUsedError;

  /// 備考
  String get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardItemCopyWith<CardItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardItemCopyWith<$Res> {
  factory $CardItemCopyWith(CardItem value, $Res Function(CardItem) then) =
      _$CardItemCopyWithImpl<$Res, CardItem>;
  @useResult
  $Res call(
      {String cardName,
      String issuingCompany,
      @IntToCardBrandConverter() CardBrand brand,
      @IntToCardClassificationConverter() CardClassification classification,
      String number,
      @StringToEffectiveDateConverter() EffectiveDate effectiveDate,
      String cardHolder,
      String passcode,
      String cardVerificationValue,
      @IntToCurrencyVolumeConverter() CurrencyVolume availableShoppingLimit,
      @IntToCurrencyVolumeConverter() CurrencyVolume availableCashAdvanceLimit,
      @IntToCurrencyVolumeConverter() CurrencyVolume annualFee,
      String repaymentAccount,
      String note});
}

/// @nodoc
class _$CardItemCopyWithImpl<$Res, $Val extends CardItem>
    implements $CardItemCopyWith<$Res> {
  _$CardItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardName = null,
    Object? issuingCompany = null,
    Object? brand = null,
    Object? classification = null,
    Object? number = null,
    Object? effectiveDate = null,
    Object? cardHolder = null,
    Object? passcode = null,
    Object? cardVerificationValue = null,
    Object? availableShoppingLimit = null,
    Object? availableCashAdvanceLimit = null,
    Object? annualFee = null,
    Object? repaymentAccount = null,
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      issuingCompany: null == issuingCompany
          ? _value.issuingCompany
          : issuingCompany // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as CardBrand,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as CardClassification,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      effectiveDate: null == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as EffectiveDate,
      cardHolder: null == cardHolder
          ? _value.cardHolder
          : cardHolder // ignore: cast_nullable_to_non_nullable
              as String,
      passcode: null == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String,
      cardVerificationValue: null == cardVerificationValue
          ? _value.cardVerificationValue
          : cardVerificationValue // ignore: cast_nullable_to_non_nullable
              as String,
      availableShoppingLimit: null == availableShoppingLimit
          ? _value.availableShoppingLimit
          : availableShoppingLimit // ignore: cast_nullable_to_non_nullable
              as CurrencyVolume,
      availableCashAdvanceLimit: null == availableCashAdvanceLimit
          ? _value.availableCashAdvanceLimit
          : availableCashAdvanceLimit // ignore: cast_nullable_to_non_nullable
              as CurrencyVolume,
      annualFee: null == annualFee
          ? _value.annualFee
          : annualFee // ignore: cast_nullable_to_non_nullable
              as CurrencyVolume,
      repaymentAccount: null == repaymentAccount
          ? _value.repaymentAccount
          : repaymentAccount // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardItemImplCopyWith<$Res>
    implements $CardItemCopyWith<$Res> {
  factory _$$CardItemImplCopyWith(
          _$CardItemImpl value, $Res Function(_$CardItemImpl) then) =
      __$$CardItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cardName,
      String issuingCompany,
      @IntToCardBrandConverter() CardBrand brand,
      @IntToCardClassificationConverter() CardClassification classification,
      String number,
      @StringToEffectiveDateConverter() EffectiveDate effectiveDate,
      String cardHolder,
      String passcode,
      String cardVerificationValue,
      @IntToCurrencyVolumeConverter() CurrencyVolume availableShoppingLimit,
      @IntToCurrencyVolumeConverter() CurrencyVolume availableCashAdvanceLimit,
      @IntToCurrencyVolumeConverter() CurrencyVolume annualFee,
      String repaymentAccount,
      String note});
}

/// @nodoc
class __$$CardItemImplCopyWithImpl<$Res>
    extends _$CardItemCopyWithImpl<$Res, _$CardItemImpl>
    implements _$$CardItemImplCopyWith<$Res> {
  __$$CardItemImplCopyWithImpl(
      _$CardItemImpl _value, $Res Function(_$CardItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardName = null,
    Object? issuingCompany = null,
    Object? brand = null,
    Object? classification = null,
    Object? number = null,
    Object? effectiveDate = null,
    Object? cardHolder = null,
    Object? passcode = null,
    Object? cardVerificationValue = null,
    Object? availableShoppingLimit = null,
    Object? availableCashAdvanceLimit = null,
    Object? annualFee = null,
    Object? repaymentAccount = null,
    Object? note = null,
  }) {
    return _then(_$CardItemImpl(
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      issuingCompany: null == issuingCompany
          ? _value.issuingCompany
          : issuingCompany // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as CardBrand,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as CardClassification,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      effectiveDate: null == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as EffectiveDate,
      cardHolder: null == cardHolder
          ? _value.cardHolder
          : cardHolder // ignore: cast_nullable_to_non_nullable
              as String,
      passcode: null == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String,
      cardVerificationValue: null == cardVerificationValue
          ? _value.cardVerificationValue
          : cardVerificationValue // ignore: cast_nullable_to_non_nullable
              as String,
      availableShoppingLimit: null == availableShoppingLimit
          ? _value.availableShoppingLimit
          : availableShoppingLimit // ignore: cast_nullable_to_non_nullable
              as CurrencyVolume,
      availableCashAdvanceLimit: null == availableCashAdvanceLimit
          ? _value.availableCashAdvanceLimit
          : availableCashAdvanceLimit // ignore: cast_nullable_to_non_nullable
              as CurrencyVolume,
      annualFee: null == annualFee
          ? _value.annualFee
          : annualFee // ignore: cast_nullable_to_non_nullable
              as CurrencyVolume,
      repaymentAccount: null == repaymentAccount
          ? _value.repaymentAccount
          : repaymentAccount // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CardItemImpl implements _CardItem {
  const _$CardItemImpl(
      {this.cardName = '',
      this.issuingCompany = '',
      @IntToCardBrandConverter() this.brand = CardBrand.other,
      @IntToCardClassificationConverter()
      this.classification = CardClassification.other,
      this.number = '',
      @StringToEffectiveDateConverter()
      this.effectiveDate = const EffectiveDate(month: '01', year: '01'),
      this.cardHolder = '',
      this.passcode = '',
      this.cardVerificationValue = '',
      @IntToCurrencyVolumeConverter()
      this.availableShoppingLimit = const CurrencyVolume(0),
      @IntToCurrencyVolumeConverter()
      this.availableCashAdvanceLimit = const CurrencyVolume(0),
      @IntToCurrencyVolumeConverter() this.annualFee = const CurrencyVolume(0),
      this.repaymentAccount = '',
      this.note = ''});

  factory _$CardItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardItemImplFromJson(json);

  /// カード名
  @override
  @JsonKey()
  final String cardName;

  /// 発行企業
  @override
  @JsonKey()
  final String issuingCompany;

  /// ブランド
  @override
  @JsonKey()
  @IntToCardBrandConverter()
  final CardBrand brand;

  /// カード区分
  @override
  @JsonKey()
  @IntToCardClassificationConverter()
  final CardClassification classification;

  /// カード番号
  @override
  @JsonKey()
  final String number;

  /// 有効期限
  @override
  @JsonKey()
  @StringToEffectiveDateConverter()
  final EffectiveDate effectiveDate;

  /// 名義人
  @override
  @JsonKey()
  final String cardHolder;

  /// 4桁暗証番号
  @override
  @JsonKey()
  final String passcode;

  /// カード裏番号
  @override
  @JsonKey()
  final String cardVerificationValue;

  /// ショッピング利用可能枠
  @override
  @JsonKey()
  @IntToCurrencyVolumeConverter()
  final CurrencyVolume availableShoppingLimit;

  /// キャッシング利用可能枠
  @override
  @JsonKey()
  @IntToCurrencyVolumeConverter()
  final CurrencyVolume availableCashAdvanceLimit;

  /// 年会費
  @override
  @JsonKey()
  @IntToCurrencyVolumeConverter()
  final CurrencyVolume annualFee;

  /// 返済口座
  @override
  @JsonKey()
  final String repaymentAccount;

  /// 備考
  @override
  @JsonKey()
  final String note;

  @override
  String toString() {
    return 'CardItem(cardName: $cardName, issuingCompany: $issuingCompany, brand: $brand, classification: $classification, number: $number, effectiveDate: $effectiveDate, cardHolder: $cardHolder, passcode: $passcode, cardVerificationValue: $cardVerificationValue, availableShoppingLimit: $availableShoppingLimit, availableCashAdvanceLimit: $availableCashAdvanceLimit, annualFee: $annualFee, repaymentAccount: $repaymentAccount, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardItemImpl &&
            (identical(other.cardName, cardName) ||
                other.cardName == cardName) &&
            (identical(other.issuingCompany, issuingCompany) ||
                other.issuingCompany == issuingCompany) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate) &&
            (identical(other.cardHolder, cardHolder) ||
                other.cardHolder == cardHolder) &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode) &&
            (identical(other.cardVerificationValue, cardVerificationValue) ||
                other.cardVerificationValue == cardVerificationValue) &&
            (identical(other.availableShoppingLimit, availableShoppingLimit) ||
                other.availableShoppingLimit == availableShoppingLimit) &&
            (identical(other.availableCashAdvanceLimit,
                    availableCashAdvanceLimit) ||
                other.availableCashAdvanceLimit == availableCashAdvanceLimit) &&
            (identical(other.annualFee, annualFee) ||
                other.annualFee == annualFee) &&
            (identical(other.repaymentAccount, repaymentAccount) ||
                other.repaymentAccount == repaymentAccount) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cardName,
      issuingCompany,
      brand,
      classification,
      number,
      effectiveDate,
      cardHolder,
      passcode,
      cardVerificationValue,
      availableShoppingLimit,
      availableCashAdvanceLimit,
      annualFee,
      repaymentAccount,
      note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardItemImplCopyWith<_$CardItemImpl> get copyWith =>
      __$$CardItemImplCopyWithImpl<_$CardItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardItemImplToJson(
      this,
    );
  }
}

abstract class _CardItem implements CardItem {
  const factory _CardItem(
      {final String cardName,
      final String issuingCompany,
      @IntToCardBrandConverter() final CardBrand brand,
      @IntToCardClassificationConverter()
      final CardClassification classification,
      final String number,
      @StringToEffectiveDateConverter() final EffectiveDate effectiveDate,
      final String cardHolder,
      final String passcode,
      final String cardVerificationValue,
      @IntToCurrencyVolumeConverter()
      final CurrencyVolume availableShoppingLimit,
      @IntToCurrencyVolumeConverter()
      final CurrencyVolume availableCashAdvanceLimit,
      @IntToCurrencyVolumeConverter() final CurrencyVolume annualFee,
      final String repaymentAccount,
      final String note}) = _$CardItemImpl;

  factory _CardItem.fromJson(Map<String, dynamic> json) =
      _$CardItemImpl.fromJson;

  @override

  /// カード名
  String get cardName;
  @override

  /// 発行企業
  String get issuingCompany;
  @override

  /// ブランド
  @IntToCardBrandConverter()
  CardBrand get brand;
  @override

  /// カード区分
  @IntToCardClassificationConverter()
  CardClassification get classification;
  @override

  /// カード番号
  String get number;
  @override

  /// 有効期限
  @StringToEffectiveDateConverter()
  EffectiveDate get effectiveDate;
  @override

  /// 名義人
  String get cardHolder;
  @override

  /// 4桁暗証番号
  String get passcode;
  @override

  /// カード裏番号
  String get cardVerificationValue;
  @override

  /// ショッピング利用可能枠
  @IntToCurrencyVolumeConverter()
  CurrencyVolume get availableShoppingLimit;
  @override

  /// キャッシング利用可能枠
  @IntToCurrencyVolumeConverter()
  CurrencyVolume get availableCashAdvanceLimit;
  @override

  /// 年会費
  @IntToCurrencyVolumeConverter()
  CurrencyVolume get annualFee;
  @override

  /// 返済口座
  String get repaymentAccount;
  @override

  /// 備考
  String get note;
  @override
  @JsonKey(ignore: true)
  _$$CardItemImplCopyWith<_$CardItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
