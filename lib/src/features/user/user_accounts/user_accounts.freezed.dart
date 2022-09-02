// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_accounts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAccounts _$UserAccountsFromJson(Map<String, dynamic> json) {
  return _UserAccounts.fromJson(json);
}

/// @nodoc
mixin _$UserAccounts {
  int get id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get user_id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAccountsCopyWith<UserAccounts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountsCopyWith<$Res> {
  factory $UserAccountsCopyWith(
          UserAccounts value, $Res Function(UserAccounts) then) =
      _$UserAccountsCopyWithImpl<$Res>;
  $Res call({int id, int user_id, String name, int balance});
}

/// @nodoc
class _$UserAccountsCopyWithImpl<$Res> implements $UserAccountsCopyWith<$Res> {
  _$UserAccountsCopyWithImpl(this._value, this._then);

  final UserAccounts _value;
  // ignore: unused_field
  final $Res Function(UserAccounts) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? name = freezed,
    Object? balance = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_UserAccountsCopyWith<$Res>
    implements $UserAccountsCopyWith<$Res> {
  factory _$$_UserAccountsCopyWith(
          _$_UserAccounts value, $Res Function(_$_UserAccounts) then) =
      __$$_UserAccountsCopyWithImpl<$Res>;
  @override
  $Res call({int id, int user_id, String name, int balance});
}

/// @nodoc
class __$$_UserAccountsCopyWithImpl<$Res>
    extends _$UserAccountsCopyWithImpl<$Res>
    implements _$$_UserAccountsCopyWith<$Res> {
  __$$_UserAccountsCopyWithImpl(
      _$_UserAccounts _value, $Res Function(_$_UserAccounts) _then)
      : super(_value, (v) => _then(v as _$_UserAccounts));

  @override
  _$_UserAccounts get _value => super._value as _$_UserAccounts;

  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? name = freezed,
    Object? balance = freezed,
  }) {
    return _then(_$_UserAccounts(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAccounts implements _UserAccounts {
  const _$_UserAccounts(
      {required this.id,
      required this.user_id,
      required this.name,
      required this.balance});

  factory _$_UserAccounts.fromJson(Map<String, dynamic> json) =>
      _$$_UserAccountsFromJson(json);

  @override
  final int id;
// ignore: non_constant_identifier_names
  @override
  final int user_id;
  @override
  final String name;
  @override
  final int balance;

  @override
  String toString() {
    return 'UserAccounts(id: $id, user_id: $user_id, name: $name, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAccounts &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user_id, user_id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.balance, balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user_id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(balance));

  @JsonKey(ignore: true)
  @override
  _$$_UserAccountsCopyWith<_$_UserAccounts> get copyWith =>
      __$$_UserAccountsCopyWithImpl<_$_UserAccounts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAccountsToJson(
      this,
    );
  }
}

abstract class _UserAccounts implements UserAccounts {
  const factory _UserAccounts(
      {required final int id,
      required final int user_id,
      required final String name,
      required final int balance}) = _$_UserAccounts;

  factory _UserAccounts.fromJson(Map<String, dynamic> json) =
      _$_UserAccounts.fromJson;

  @override
  int get id;
  @override // ignore: non_constant_identifier_names
  int get user_id;
  @override
  String get name;
  @override
  int get balance;
  @override
  @JsonKey(ignore: true)
  _$$_UserAccountsCopyWith<_$_UserAccounts> get copyWith =>
      throw _privateConstructorUsedError;
}
