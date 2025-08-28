// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_user_email_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckUserEmailResponse _$CheckUserEmailResponseFromJson(
  Map<String, dynamic> json,
) => _CheckUserEmailResponse(
  email: json['email'] as bool?,
  id: (json['id'] as num?)?.toInt(),
);

Map<String, dynamic> _$CheckUserEmailResponseToJson(
  _CheckUserEmailResponse instance,
) => <String, dynamic>{'email': instance.email, 'id': instance.id};
