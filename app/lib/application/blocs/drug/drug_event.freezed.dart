// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drug_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrugEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDrugPriorities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDrugPriorities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDrugPriorities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDrugPriorites value) getDrugPriorities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDrugPriorites value)? getDrugPriorities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDrugPriorites value)? getDrugPriorities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrugEventCopyWith<$Res> {
  factory $DrugEventCopyWith(DrugEvent value, $Res Function(DrugEvent) then) =
      _$DrugEventCopyWithImpl<$Res, DrugEvent>;
}

/// @nodoc
class _$DrugEventCopyWithImpl<$Res, $Val extends DrugEvent>
    implements $DrugEventCopyWith<$Res> {
  _$DrugEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDrugPrioritesCopyWith<$Res> {
  factory _$$GetDrugPrioritesCopyWith(
          _$GetDrugPriorites value, $Res Function(_$GetDrugPriorites) then) =
      __$$GetDrugPrioritesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDrugPrioritesCopyWithImpl<$Res>
    extends _$DrugEventCopyWithImpl<$Res, _$GetDrugPriorites>
    implements _$$GetDrugPrioritesCopyWith<$Res> {
  __$$GetDrugPrioritesCopyWithImpl(
      _$GetDrugPriorites _value, $Res Function(_$GetDrugPriorites) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDrugPriorites implements GetDrugPriorites {
  const _$GetDrugPriorites();

  @override
  String toString() {
    return 'DrugEvent.getDrugPriorities()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDrugPriorites);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDrugPriorities,
  }) {
    return getDrugPriorities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDrugPriorities,
  }) {
    return getDrugPriorities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDrugPriorities,
    required TResult orElse(),
  }) {
    if (getDrugPriorities != null) {
      return getDrugPriorities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDrugPriorites value) getDrugPriorities,
  }) {
    return getDrugPriorities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDrugPriorites value)? getDrugPriorities,
  }) {
    return getDrugPriorities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDrugPriorites value)? getDrugPriorities,
    required TResult orElse(),
  }) {
    if (getDrugPriorities != null) {
      return getDrugPriorities(this);
    }
    return orElse();
  }
}

abstract class GetDrugPriorites implements DrugEvent {
  const factory GetDrugPriorites() = _$GetDrugPriorites;
}
