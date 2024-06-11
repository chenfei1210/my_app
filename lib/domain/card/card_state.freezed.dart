// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardState {
  AsyncValue<List<CardItem>> get cardItemList =>
      throw _privateConstructorUsedError;
  String get enteredSearchKeyword => throw _privateConstructorUsedError;
  Set<CardBrandFilterItem> get cardBrandFilterSet =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardStateCopyWith<CardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardStateCopyWith<$Res> {
  factory $CardStateCopyWith(CardState value, $Res Function(CardState) then) =
      _$CardStateCopyWithImpl<$Res, CardState>;
  @useResult
  $Res call(
      {AsyncValue<List<CardItem>> cardItemList,
      String enteredSearchKeyword,
      Set<CardBrandFilterItem> cardBrandFilterSet});
}

/// @nodoc
class _$CardStateCopyWithImpl<$Res, $Val extends CardState>
    implements $CardStateCopyWith<$Res> {
  _$CardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardItemList = null,
    Object? enteredSearchKeyword = null,
    Object? cardBrandFilterSet = null,
  }) {
    return _then(_value.copyWith(
      cardItemList: null == cardItemList
          ? _value.cardItemList
          : cardItemList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<CardItem>>,
      enteredSearchKeyword: null == enteredSearchKeyword
          ? _value.enteredSearchKeyword
          : enteredSearchKeyword // ignore: cast_nullable_to_non_nullable
              as String,
      cardBrandFilterSet: null == cardBrandFilterSet
          ? _value.cardBrandFilterSet
          : cardBrandFilterSet // ignore: cast_nullable_to_non_nullable
              as Set<CardBrandFilterItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardStateImplCopyWith<$Res>
    implements $CardStateCopyWith<$Res> {
  factory _$$CardStateImplCopyWith(
          _$CardStateImpl value, $Res Function(_$CardStateImpl) then) =
      __$$CardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<CardItem>> cardItemList,
      String enteredSearchKeyword,
      Set<CardBrandFilterItem> cardBrandFilterSet});
}

/// @nodoc
class __$$CardStateImplCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$CardStateImpl>
    implements _$$CardStateImplCopyWith<$Res> {
  __$$CardStateImplCopyWithImpl(
      _$CardStateImpl _value, $Res Function(_$CardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardItemList = null,
    Object? enteredSearchKeyword = null,
    Object? cardBrandFilterSet = null,
  }) {
    return _then(_$CardStateImpl(
      cardItemList: null == cardItemList
          ? _value.cardItemList
          : cardItemList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<CardItem>>,
      enteredSearchKeyword: null == enteredSearchKeyword
          ? _value.enteredSearchKeyword
          : enteredSearchKeyword // ignore: cast_nullable_to_non_nullable
              as String,
      cardBrandFilterSet: null == cardBrandFilterSet
          ? _value._cardBrandFilterSet
          : cardBrandFilterSet // ignore: cast_nullable_to_non_nullable
              as Set<CardBrandFilterItem>,
    ));
  }
}

/// @nodoc

class _$CardStateImpl extends _CardState {
  const _$CardStateImpl(
      {this.cardItemList = const AsyncValue.loading(),
      this.enteredSearchKeyword = '',
      required final Set<CardBrandFilterItem> cardBrandFilterSet})
      : _cardBrandFilterSet = cardBrandFilterSet,
        super._();

  @override
  @JsonKey()
  final AsyncValue<List<CardItem>> cardItemList;
  @override
  @JsonKey()
  final String enteredSearchKeyword;
  final Set<CardBrandFilterItem> _cardBrandFilterSet;
  @override
  Set<CardBrandFilterItem> get cardBrandFilterSet {
    if (_cardBrandFilterSet is EqualUnmodifiableSetView)
      return _cardBrandFilterSet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_cardBrandFilterSet);
  }

  @override
  String toString() {
    return 'CardState(cardItemList: $cardItemList, enteredSearchKeyword: $enteredSearchKeyword, cardBrandFilterSet: $cardBrandFilterSet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardStateImpl &&
            (identical(other.cardItemList, cardItemList) ||
                other.cardItemList == cardItemList) &&
            (identical(other.enteredSearchKeyword, enteredSearchKeyword) ||
                other.enteredSearchKeyword == enteredSearchKeyword) &&
            const DeepCollectionEquality()
                .equals(other._cardBrandFilterSet, _cardBrandFilterSet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cardItemList,
      enteredSearchKeyword,
      const DeepCollectionEquality().hash(_cardBrandFilterSet));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardStateImplCopyWith<_$CardStateImpl> get copyWith =>
      __$$CardStateImplCopyWithImpl<_$CardStateImpl>(this, _$identity);
}

abstract class _CardState extends CardState {
  const factory _CardState(
          {final AsyncValue<List<CardItem>> cardItemList,
          final String enteredSearchKeyword,
          required final Set<CardBrandFilterItem> cardBrandFilterSet}) =
      _$CardStateImpl;
  const _CardState._() : super._();

  @override
  AsyncValue<List<CardItem>> get cardItemList;
  @override
  String get enteredSearchKeyword;
  @override
  Set<CardBrandFilterItem> get cardBrandFilterSet;
  @override
  @JsonKey(ignore: true)
  _$$CardStateImplCopyWith<_$CardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CardBrandFilterItem {
  CardBrand get cardBrand => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardBrandFilterItemCopyWith<CardBrandFilterItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardBrandFilterItemCopyWith<$Res> {
  factory $CardBrandFilterItemCopyWith(
          CardBrandFilterItem value, $Res Function(CardBrandFilterItem) then) =
      _$CardBrandFilterItemCopyWithImpl<$Res, CardBrandFilterItem>;
  @useResult
  $Res call({CardBrand cardBrand, bool isSelected});
}

/// @nodoc
class _$CardBrandFilterItemCopyWithImpl<$Res, $Val extends CardBrandFilterItem>
    implements $CardBrandFilterItemCopyWith<$Res> {
  _$CardBrandFilterItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardBrand = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      cardBrand: null == cardBrand
          ? _value.cardBrand
          : cardBrand // ignore: cast_nullable_to_non_nullable
              as CardBrand,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardBrandFilterItemImplCopyWith<$Res>
    implements $CardBrandFilterItemCopyWith<$Res> {
  factory _$$CardBrandFilterItemImplCopyWith(_$CardBrandFilterItemImpl value,
          $Res Function(_$CardBrandFilterItemImpl) then) =
      __$$CardBrandFilterItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CardBrand cardBrand, bool isSelected});
}

/// @nodoc
class __$$CardBrandFilterItemImplCopyWithImpl<$Res>
    extends _$CardBrandFilterItemCopyWithImpl<$Res, _$CardBrandFilterItemImpl>
    implements _$$CardBrandFilterItemImplCopyWith<$Res> {
  __$$CardBrandFilterItemImplCopyWithImpl(_$CardBrandFilterItemImpl _value,
      $Res Function(_$CardBrandFilterItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardBrand = null,
    Object? isSelected = null,
  }) {
    return _then(_$CardBrandFilterItemImpl(
      cardBrand: null == cardBrand
          ? _value.cardBrand
          : cardBrand // ignore: cast_nullable_to_non_nullable
              as CardBrand,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CardBrandFilterItemImpl implements _CardBrandFilterItem {
  const _$CardBrandFilterItemImpl(
      {required this.cardBrand, this.isSelected = false});

  @override
  final CardBrand cardBrand;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'CardBrandFilterItem(cardBrand: $cardBrand, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardBrandFilterItemImpl &&
            (identical(other.cardBrand, cardBrand) ||
                other.cardBrand == cardBrand) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardBrand, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardBrandFilterItemImplCopyWith<_$CardBrandFilterItemImpl> get copyWith =>
      __$$CardBrandFilterItemImplCopyWithImpl<_$CardBrandFilterItemImpl>(
          this, _$identity);
}

abstract class _CardBrandFilterItem implements CardBrandFilterItem {
  const factory _CardBrandFilterItem(
      {required final CardBrand cardBrand,
      final bool isSelected}) = _$CardBrandFilterItemImpl;

  @override
  CardBrand get cardBrand;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$CardBrandFilterItemImplCopyWith<_$CardBrandFilterItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
