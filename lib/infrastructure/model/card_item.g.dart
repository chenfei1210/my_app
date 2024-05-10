// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardItemImpl _$$CardItemImplFromJson(Map<String, dynamic> json) =>
    _$CardItemImpl(
      cardName: json['card_name'] as String? ?? '',
      issuingCompany: json['issuing_company'] as String? ?? '',
      brand: json['brand'] == null
          ? CardBrand.other
          : const IntToCardBrandConverter().fromJson(json['brand'] as int),
      classification: json['classification'] == null
          ? CardClassification.other
          : const IntToCardClassificationConverter()
              .fromJson(json['classification'] as int),
      number: json['number'] as String? ?? '',
      effectiveDate: json['effective_date'] == null
          ? const EffectiveDate(month: '01', year: '01')
          : const StringToEffectiveDateConverter()
              .fromJson(json['effective_date'] as String),
      cardHolder: json['card_holder'] as String? ?? '',
      passcode: json['passcode'] as String? ?? '',
      cardVerificationValue: json['card_verification_value'] as String? ?? '',
      availableShoppingLimit: json['available_shopping_limit'] == null
          ? const CurrencyVolume(0)
          : const IntToCurrencyVolumeConverter()
              .fromJson(json['available_shopping_limit'] as int),
      availableCashAdvanceLimit: json['available_cash_advance_limit'] == null
          ? const CurrencyVolume(0)
          : const IntToCurrencyVolumeConverter()
              .fromJson(json['available_cash_advance_limit'] as int),
      annualFee: json['annual_fee'] == null
          ? const CurrencyVolume(0)
          : const IntToCurrencyVolumeConverter()
              .fromJson(json['annual_fee'] as int),
      repaymentAccount: json['repayment_account'] as String? ?? '',
      note: json['note'] as String? ?? '',
      managedSites: json['managed_sites'] as String? ?? '',
      account: json['account'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$CardItemImplToJson(_$CardItemImpl instance) =>
    <String, dynamic>{
      'card_name': instance.cardName,
      'issuing_company': instance.issuingCompany,
      'brand': const IntToCardBrandConverter().toJson(instance.brand),
      'classification': const IntToCardClassificationConverter()
          .toJson(instance.classification),
      'number': instance.number,
      'effective_date':
          const StringToEffectiveDateConverter().toJson(instance.effectiveDate),
      'card_holder': instance.cardHolder,
      'passcode': instance.passcode,
      'card_verification_value': instance.cardVerificationValue,
      'available_shopping_limit': const IntToCurrencyVolumeConverter()
          .toJson(instance.availableShoppingLimit),
      'available_cash_advance_limit': const IntToCurrencyVolumeConverter()
          .toJson(instance.availableCashAdvanceLimit),
      'annual_fee':
          const IntToCurrencyVolumeConverter().toJson(instance.annualFee),
      'repayment_account': instance.repaymentAccount,
      'note': instance.note,
      'managed_sites': instance.managedSites,
      'account': instance.account,
      'password': instance.password,
    };
