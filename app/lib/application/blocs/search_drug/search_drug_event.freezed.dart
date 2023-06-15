// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_drug_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchDrugEvent {
  String get keyword => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyword) searchDrug,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyword)? searchDrug,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyword)? searchDrug,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchDrug value) searchDrug,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchDrug value)? searchDrug,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchDrug value)? searchDrug,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchDrugEventCopyWith<SearchDrugEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDrugEventCopyWith<$Res> {
  factory $SearchDrugEventCopyWith(
          SearchDrugEvent value, $Res Function(SearchDrugEvent) then) =
      _$SearchDrugEventCopyWithImpl<$Res, SearchDrugEvent>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class _$SearchDrugEventCopyWithImpl<$Res, $Val extends SearchDrugEvent>
    implements $SearchDrugEventCopyWith<$Res> {
  _$SearchDrugEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchDrugCopyWith<$Res>
    implements $SearchDrugEventCopyWith<$Res> {
  factory _$$SearchDrugCopyWith(
          _$SearchDrug value, $Res Function(_$SearchDrug) then) =
      __$$SearchDrugCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$SearchDrugCopyWithImpl<$Res>
    extends _$SearchDrugEventCopyWithImpl<$Res, _$SearchDrug>
    implements _$$SearchDrugCopyWith<$Res> {
  __$$SearchDrugCopyWithImpl(
      _$SearchDrug _value, $Res Function(_$SearchDrug) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$SearchDrug(
      null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchDrug implements SearchDrug {
  const _$SearchDrug(this.keyword);

  @override
  final String keyword;

  @override
  String toString() {
    return 'SearchDrugEvent.searchDrug(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDrug &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDrugCopyWith<_$SearchDrug> get copyWith =>
      __$$SearchDrugCopyWithImpl<_$SearchDrug>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyword) searchDrug,
  }) {
    return searchDrug(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String keyword)? searchDrug,
  }) {
    return searchDrug?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyword)? searchDrug,
    required TResult orElse(),
  }) {
    if (searchDrug != null) {
      return searchDrug(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchDrug value) searchDrug,
  }) {
    return searchDrug(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchDrug value)? searchDrug,
  }) {
    return searchDrug?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchDrug value)? searchDrug,
    required TResult orElse(),
  }) {
    if (searchDrug != null) {
      return searchDrug(this);
    }
    return orElse();
  }
}

abstract class SearchDrug implements SearchDrugEvent {
  const factory SearchDrug(final String keyword) = _$SearchDrug;

  @override
  String get keyword;
  @override
  @JsonKey(ignore: true)
  _$$SearchDrugCopyWith<_$SearchDrug> get copyWith =>
      throw _privateConstructorUsedError;
}
