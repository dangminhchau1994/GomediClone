// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drug_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrugState {
  List<DrugPriority>? get drugPriorities => throw _privateConstructorUsedError;
  List<DrugType>? get drugTypes => throw _privateConstructorUsedError;
  List<DrugIcon>? get drugIcons => throw _privateConstructorUsedError;
  List<DrugColor>? get drugColors => throw _privateConstructorUsedError;
  DrugFailure? get failure => throw _privateConstructorUsedError;
  BaseStatus? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrugStateCopyWith<DrugState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrugStateCopyWith<$Res> {
  factory $DrugStateCopyWith(DrugState value, $Res Function(DrugState) then) =
      _$DrugStateCopyWithImpl<$Res, DrugState>;
  @useResult
  $Res call(
      {List<DrugPriority>? drugPriorities,
      List<DrugType>? drugTypes,
      List<DrugIcon>? drugIcons,
      List<DrugColor>? drugColors,
      DrugFailure? failure,
      BaseStatus? status});

  $DrugFailureCopyWith<$Res>? get failure;
  $BaseStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$DrugStateCopyWithImpl<$Res, $Val extends DrugState>
    implements $DrugStateCopyWith<$Res> {
  _$DrugStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drugPriorities = freezed,
    Object? drugTypes = freezed,
    Object? drugIcons = freezed,
    Object? drugColors = freezed,
    Object? failure = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      drugPriorities: freezed == drugPriorities
          ? _value.drugPriorities
          : drugPriorities // ignore: cast_nullable_to_non_nullable
              as List<DrugPriority>?,
      drugTypes: freezed == drugTypes
          ? _value.drugTypes
          : drugTypes // ignore: cast_nullable_to_non_nullable
              as List<DrugType>?,
      drugIcons: freezed == drugIcons
          ? _value.drugIcons
          : drugIcons // ignore: cast_nullable_to_non_nullable
              as List<DrugIcon>?,
      drugColors: freezed == drugColors
          ? _value.drugColors
          : drugColors // ignore: cast_nullable_to_non_nullable
              as List<DrugColor>?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DrugFailure?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus?,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$_DrugStateCopyWith<$Res> implements $DrugStateCopyWith<$Res> {
  factory _$$_DrugStateCopyWith(
          _$_DrugState value, $Res Function(_$_DrugState) then) =
      __$$_DrugStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DrugPriority>? drugPriorities,
      List<DrugType>? drugTypes,
      List<DrugIcon>? drugIcons,
      List<DrugColor>? drugColors,
      DrugFailure? failure,
      BaseStatus? status});

  @override
  $DrugFailureCopyWith<$Res>? get failure;
  @override
  $BaseStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_DrugStateCopyWithImpl<$Res>
    extends _$DrugStateCopyWithImpl<$Res, _$_DrugState>
    implements _$$_DrugStateCopyWith<$Res> {
  __$$_DrugStateCopyWithImpl(
      _$_DrugState _value, $Res Function(_$_DrugState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drugPriorities = freezed,
    Object? drugTypes = freezed,
    Object? drugIcons = freezed,
    Object? drugColors = freezed,
    Object? failure = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_DrugState(
      drugPriorities: freezed == drugPriorities
          ? _value._drugPriorities
          : drugPriorities // ignore: cast_nullable_to_non_nullable
              as List<DrugPriority>?,
      drugTypes: freezed == drugTypes
          ? _value._drugTypes
          : drugTypes // ignore: cast_nullable_to_non_nullable
              as List<DrugType>?,
      drugIcons: freezed == drugIcons
          ? _value._drugIcons
          : drugIcons // ignore: cast_nullable_to_non_nullable
              as List<DrugIcon>?,
      drugColors: freezed == drugColors
          ? _value._drugColors
          : drugColors // ignore: cast_nullable_to_non_nullable
              as List<DrugColor>?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DrugFailure?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus?,
    ));
  }
}

/// @nodoc

class _$_DrugState implements _DrugState {
  const _$_DrugState(
      {final List<DrugPriority>? drugPriorities,
      final List<DrugType>? drugTypes,
      final List<DrugIcon>? drugIcons,
      final List<DrugColor>? drugColors,
      this.failure,
      this.status})
      : _drugPriorities = drugPriorities,
        _drugTypes = drugTypes,
        _drugIcons = drugIcons,
        _drugColors = drugColors;

  final List<DrugPriority>? _drugPriorities;
  @override
  List<DrugPriority>? get drugPriorities {
    final value = _drugPriorities;
    if (value == null) return null;
    if (_drugPriorities is EqualUnmodifiableListView) return _drugPriorities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DrugType>? _drugTypes;
  @override
  List<DrugType>? get drugTypes {
    final value = _drugTypes;
    if (value == null) return null;
    if (_drugTypes is EqualUnmodifiableListView) return _drugTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DrugIcon>? _drugIcons;
  @override
  List<DrugIcon>? get drugIcons {
    final value = _drugIcons;
    if (value == null) return null;
    if (_drugIcons is EqualUnmodifiableListView) return _drugIcons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DrugColor>? _drugColors;
  @override
  List<DrugColor>? get drugColors {
    final value = _drugColors;
    if (value == null) return null;
    if (_drugColors is EqualUnmodifiableListView) return _drugColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DrugFailure? failure;
  @override
  final BaseStatus? status;

  @override
  String toString() {
    return 'DrugState(drugPriorities: $drugPriorities, drugTypes: $drugTypes, drugIcons: $drugIcons, drugColors: $drugColors, failure: $failure, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrugState &&
            const DeepCollectionEquality()
                .equals(other._drugPriorities, _drugPriorities) &&
            const DeepCollectionEquality()
                .equals(other._drugTypes, _drugTypes) &&
            const DeepCollectionEquality()
                .equals(other._drugIcons, _drugIcons) &&
            const DeepCollectionEquality()
                .equals(other._drugColors, _drugColors) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_drugPriorities),
      const DeepCollectionEquality().hash(_drugTypes),
      const DeepCollectionEquality().hash(_drugIcons),
      const DeepCollectionEquality().hash(_drugColors),
      failure,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrugStateCopyWith<_$_DrugState> get copyWith =>
      __$$_DrugStateCopyWithImpl<_$_DrugState>(this, _$identity);
}

abstract class _DrugState implements DrugState {
  const factory _DrugState(
      {final List<DrugPriority>? drugPriorities,
      final List<DrugType>? drugTypes,
      final List<DrugIcon>? drugIcons,
      final List<DrugColor>? drugColors,
      final DrugFailure? failure,
      final BaseStatus? status}) = _$_DrugState;

  @override
  List<DrugPriority>? get drugPriorities;
  @override
  List<DrugType>? get drugTypes;
  @override
  List<DrugIcon>? get drugIcons;
  @override
  List<DrugColor>? get drugColors;
  @override
  DrugFailure? get failure;
  @override
  BaseStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$_DrugStateCopyWith<_$_DrugState> get copyWith =>
      throw _privateConstructorUsedError;
}
