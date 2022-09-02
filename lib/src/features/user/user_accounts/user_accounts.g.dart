// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_accounts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAccounts _$$_UserAccountsFromJson(Map<String, dynamic> json) =>
    _$_UserAccounts(
      id: json['id'] as int,
      user_id: json['user_id'] as int,
      name: json['name'] as String,
      balance: json['balance'] as int,
    );

Map<String, dynamic> _$$_UserAccountsToJson(_$_UserAccounts instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'name': instance.name,
      'balance': instance.balance,
    };
