// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  List<Profile>? get defaultProfiles => throw _privateConstructorUsedError;
  List<Profile>? get sharedProfiles => throw _privateConstructorUsedError;
  List<Profile>? get createdProfiles => throw _privateConstructorUsedError;
  List<List<Profile>>? get allProfiles => throw _privateConstructorUsedError;
  BaseStatus? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {List<Profile>? defaultProfiles,
      List<Profile>? sharedProfiles,
      List<Profile>? createdProfiles,
      List<List<Profile>>? allProfiles,
      BaseStatus? status});

  $BaseStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultProfiles = freezed,
    Object? sharedProfiles = freezed,
    Object? createdProfiles = freezed,
    Object? allProfiles = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      defaultProfiles: freezed == defaultProfiles
          ? _value.defaultProfiles
          : defaultProfiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>?,
      sharedProfiles: freezed == sharedProfiles
          ? _value.sharedProfiles
          : sharedProfiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>?,
      createdProfiles: freezed == createdProfiles
          ? _value.createdProfiles
          : createdProfiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>?,
      allProfiles: freezed == allProfiles
          ? _value.allProfiles
          : allProfiles // ignore: cast_nullable_to_non_nullable
              as List<List<Profile>>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus?,
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
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Profile>? defaultProfiles,
      List<Profile>? sharedProfiles,
      List<Profile>? createdProfiles,
      List<List<Profile>>? allProfiles,
      BaseStatus? status});

  @override
  $BaseStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultProfiles = freezed,
    Object? sharedProfiles = freezed,
    Object? createdProfiles = freezed,
    Object? allProfiles = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ProfileState(
      defaultProfiles: freezed == defaultProfiles
          ? _value._defaultProfiles
          : defaultProfiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>?,
      sharedProfiles: freezed == sharedProfiles
          ? _value._sharedProfiles
          : sharedProfiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>?,
      createdProfiles: freezed == createdProfiles
          ? _value._createdProfiles
          : createdProfiles // ignore: cast_nullable_to_non_nullable
              as List<Profile>?,
      allProfiles: freezed == allProfiles
          ? _value._allProfiles
          : allProfiles // ignore: cast_nullable_to_non_nullable
              as List<List<Profile>>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus?,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {final List<Profile>? defaultProfiles,
      final List<Profile>? sharedProfiles,
      final List<Profile>? createdProfiles,
      final List<List<Profile>>? allProfiles,
      this.status})
      : _defaultProfiles = defaultProfiles,
        _sharedProfiles = sharedProfiles,
        _createdProfiles = createdProfiles,
        _allProfiles = allProfiles;

  final List<Profile>? _defaultProfiles;
  @override
  List<Profile>? get defaultProfiles {
    final value = _defaultProfiles;
    if (value == null) return null;
    if (_defaultProfiles is EqualUnmodifiableListView) return _defaultProfiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Profile>? _sharedProfiles;
  @override
  List<Profile>? get sharedProfiles {
    final value = _sharedProfiles;
    if (value == null) return null;
    if (_sharedProfiles is EqualUnmodifiableListView) return _sharedProfiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Profile>? _createdProfiles;
  @override
  List<Profile>? get createdProfiles {
    final value = _createdProfiles;
    if (value == null) return null;
    if (_createdProfiles is EqualUnmodifiableListView) return _createdProfiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<List<Profile>>? _allProfiles;
  @override
  List<List<Profile>>? get allProfiles {
    final value = _allProfiles;
    if (value == null) return null;
    if (_allProfiles is EqualUnmodifiableListView) return _allProfiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BaseStatus? status;

  @override
  String toString() {
    return 'ProfileState(defaultProfiles: $defaultProfiles, sharedProfiles: $sharedProfiles, createdProfiles: $createdProfiles, allProfiles: $allProfiles, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            const DeepCollectionEquality()
                .equals(other._defaultProfiles, _defaultProfiles) &&
            const DeepCollectionEquality()
                .equals(other._sharedProfiles, _sharedProfiles) &&
            const DeepCollectionEquality()
                .equals(other._createdProfiles, _createdProfiles) &&
            const DeepCollectionEquality()
                .equals(other._allProfiles, _allProfiles) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_defaultProfiles),
      const DeepCollectionEquality().hash(_sharedProfiles),
      const DeepCollectionEquality().hash(_createdProfiles),
      const DeepCollectionEquality().hash(_allProfiles),
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final List<Profile>? defaultProfiles,
      final List<Profile>? sharedProfiles,
      final List<Profile>? createdProfiles,
      final List<List<Profile>>? allProfiles,
      final BaseStatus? status}) = _$_ProfileState;

  @override
  List<Profile>? get defaultProfiles;
  @override
  List<Profile>? get sharedProfiles;
  @override
  List<Profile>? get createdProfiles;
  @override
  List<List<Profile>>? get allProfiles;
  @override
  BaseStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
