// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Register _$$_RegisterFromJson(Map<String, dynamic> json) => _$_Register(
      firstName: json['firstName'] as String?,
      password: json['password'] as String?,
      email: json['email'] as String?,
      login: json['login'] as String?,
      languageId: json['languageId'] as int?,
    );

Map<String, dynamic> _$$_RegisterToJson(_$_Register instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'password': instance.password,
      'email': instance.email,
      'login': instance.login,
      'languageId': instance.languageId,
    };
