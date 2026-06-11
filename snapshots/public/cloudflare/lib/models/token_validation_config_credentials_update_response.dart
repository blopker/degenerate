// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_credentials_jwt_key.dart';import 'shield_credentials_jwt_key_ec_es256.dart';import 'shield_credentials_jwt_key_ec_es384.dart';import 'shield_credentials_jwt_key_rsa.dart';import 'shield_messages2.dart';@immutable final class TokenValidationConfigCredentialsUpdateResponse {const TokenValidationConfigCredentialsUpdateResponse({required this.errors, required this.messages, required this.success, required this.keys, });

factory TokenValidationConfigCredentialsUpdateResponse.fromJson(Map<String, dynamic> json) { return TokenValidationConfigCredentialsUpdateResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  keys: (json['keys'] as List<dynamic>).map((e) => OneOf3.parse(e, fromA: (v) => ShieldCredentialsJwtKeyRsa.fromJson(v as Map<String, dynamic>), fromB: (v) => ShieldCredentialsJwtKeyEcEs256.fromJson(v as Map<String, dynamic>), fromC: (v) => ShieldCredentialsJwtKeyEcEs384.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<ShieldMessages2> errors;

final List<ShieldMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<ShieldCredentialsJwtKey> keys;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'keys': keys.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('keys'); } 
TokenValidationConfigCredentialsUpdateResponse copyWith({List<ShieldMessages2>? errors, List<ShieldMessages2>? messages, bool? success, List<ShieldCredentialsJwtKey>? keys, }) { return TokenValidationConfigCredentialsUpdateResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  keys: keys ?? this.keys,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenValidationConfigCredentialsUpdateResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(keys, other.keys); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(keys)); } 
@override String toString() { return 'TokenValidationConfigCredentialsUpdateResponse(errors: $errors, messages: $messages, success: $success, keys: $keys)'; } 
 }
