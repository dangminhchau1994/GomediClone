// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_drug_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchDrugState {
  BaseStatus? get status => throw _privateConstructorUsedError;
  String? get keyword => throw _privateConstructorUsedError;
  List<Drug>? get drugs => throw _privateConstructorUsedError;
  DrugFailure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchDrugStateCopyWith<SearchDrugState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDrugStateCopyWith<$Res> {
  factory $SearchDrugStateCopyWith(
          SearchDrugState value, $Res Function(SearchDrugState) then) =
      _$SearchDrugStateCopyWithImpl<$Res, SearchDrugState>;
  @useResult
  $Res call(
      {BaseStatus? status,
      String? keyword,
      List<Drug>? drugs,
      DrugFailure? failure});

  $BaseStatusCopyWith<$Res>? get status;
  $DrugFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$SearchDrugStateCopyWithImpl<$Res, $Val extends SearchDrugState>
    implements $SearchDrugStateCopyWith<$Res> {
  _$SearchDrugStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? keyword = freezed,
    Object? drugs = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus?,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      drugs: freezed == drugs
          ? _value.drugs
          : drugs // ignore: cast_nullable_to_non_nullable
              as List<Drug>?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DrugFailure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $BaseStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DrugFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $DrugFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchDrugStateCopyWith<$Res>
    implements $SearchDrugStateCopyWith<$Res> {
  factory _$$_SearchDrugStateCopyWith(
          _$_SearchDrugState value, $Res Function(_$_SearchDrugState) then) =
      __$$_SearchDrugStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus? status,
      String? keyword,
      List<Drug>? drugs,
      DrugFailure? failure});

  @override
  $BaseStatusCopyWith<$Res>? get status;
  @override
  $DrugFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$_SearchDrugStateCopyWithImpl<$Res>
    extends _$SearchDrugStateCopyWithImpl<$Res, _$_SearchDrugState>
    implements _$$_SearchDrugStateCopyWith<$Res> {
  __$$_SearchDrugStateCopyWithImpl(
      _$_SearchDrugState _value, $Res Function(_$_SearchDrugState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? keyword = freezed,
    Object? drugs = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_SearchDrugState(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus?,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      drugs: freezed == drugs
          ? _value.drugs
          : drugs // ignore: cast_nullable_to_non_nullable
              as List<Drug>?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DrugFailure?,
    ));
  }
}

/// @nodoc

class _$_SearchDrugState implements _SearchDrugState {
  const _$_SearchDrugState(
      {this.status, this.keyword, this.drugs, this.failure});

  @override
  final BaseStatus? status;
  @override
  final String? keyword;
  @override
  final List<Drug>? drugs;
  @override
  final DrugFailure? failure;

  @override
  String toString() {
    return 'SearchDrugState(status: $status, keyword: $keyword, drugs: $drugs, failure: $failure)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchDrugStateCopyWith<_$_SearchDrugState> get copyWith =>
      __$$_SearchDrugStateCopyWithImpl<_$_SearchDrugState>(this, _$identity);
}

abstract class _SearchDrugState implements SearchDrugState {
  const factory _SearchDrugState(
      {final BaseStatus? status,
      final String? keyword,
      final List<Drug>? drugs,
      final DrugFailure? failure}) = _$_SearchDrugState;

  @override
  BaseStatus? get status;
  @override
  String? get keyword;
  @override
  List<Drug>? get drugs;
  @override
  DrugFailure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_SearchDrugStateCopyWith<_$_SearchDrugState> get copyWith =>
      throw _privateConstructorUsedError;
}
