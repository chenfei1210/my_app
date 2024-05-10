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
  String get enteredSearchKeyword => throw _privateConstructorUsedError;
  AsyncValue<List<CardItem>> get cardItemList =>
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
      {String enteredSearchKeyword, AsyncValue<List<CardItem>> cardItemList});
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
    Object? enteredSearchKeyword = null,
    Object? cardItemList = null,
  }) {
    return _then(_value.copyWith(
      enteredSearchKeyword: null == enteredSearchKeyword
          ? _value.enteredSearchKeyword
          : enteredSearchKeyword // ignore: cast_nullable_to_non_nullable
              as String,
      cardItemList: null == cardItemList
          ? _value.cardItemList
          : cardItemList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<CardItem>>,
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
      {String enteredSearchKeyword, AsyncValue<List<CardItem>> cardItemList});
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
    Object? enteredSearchKeyword = null,
    Object? cardItemList = null,
  }) {
    return _then(_$CardStateImpl(
      enteredSearchKeyword: null == enteredSearchKeyword
          ? _value.enteredSearchKeyword
          : enteredSearchKeyword // ignore: cast_nullable_to_non_nullable
              as String,
      cardItemList: null == cardItemList
          ? _value.cardItemList
          : cardItemList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<CardItem>>,
    ));
  }
}

/// @nodoc

class _$CardStateImpl implements _CardState {
  const _$CardStateImpl(
      {this.enteredSearchKeyword = '',
      this.cardItemList = const AsyncValue.loading()});

  @override
  @JsonKey()
  final String enteredSearchKeyword;
  @override
  @JsonKey()
  final AsyncValue<List<CardItem>> cardItemList;

  @override
  String toString() {
    return 'CardState(enteredSearchKeyword: $enteredSearchKeyword, cardItemList: $cardItemList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardStateImpl &&
            (identical(other.enteredSearchKeyword, enteredSearchKeyword) ||
                other.enteredSearchKeyword == enteredSearchKeyword) &&
            (identical(other.cardItemList, cardItemList) ||
                other.cardItemList == cardItemList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, enteredSearchKeyword, cardItemList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardStateImplCopyWith<_$CardStateImpl> get copyWith =>
      __$$CardStateImplCopyWithImpl<_$CardStateImpl>(this, _$identity);
}

abstract class _CardState implements CardState {
  const factory _CardState(
      {final String enteredSearchKeyword,
      final AsyncValue<List<CardItem>> cardItemList}) = _$CardStateImpl;

  @override
  String get enteredSearchKeyword;
  @override
  AsyncValue<List<CardItem>> get cardItemList;
  @override
  @JsonKey(ignore: true)
  _$$CardStateImplCopyWith<_$CardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
