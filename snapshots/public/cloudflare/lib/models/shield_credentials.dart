// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_credentials_jwt_key.dart';import 'shield_credentials_jwt_key_common.dart';final class ShieldCredentials {const ShieldCredentials({required this.keys});

factory ShieldCredentials.fromJson(Map<String, dynamic> json) { return ShieldCredentials(
  keys: (json['keys'] as List<dynamic>).map((e) => OneOf3.parse(e, fromA: (v) => ShieldCredentialsJwtKeyCommon.fromJson(v as Map<String, dynamic>), fromB: (v) => ShieldCredentialsJwtKeyCommon.fromJson(v as Map<String, dynamic>), fromC: (v) => ShieldCredentialsJwtKeyCommon.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<ShieldCredentialsJwtKey> keys;

Map<String, dynamic> toJson() { return {
  'keys': keys.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('keys'); } 
ShieldCredentials copyWith({List<ShieldCredentialsJwtKey>? keys}) { return ShieldCredentials(
  keys: keys ?? this.keys,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldCredentials &&
          listEquals(keys, other.keys); } 
@override int get hashCode { return Object.hashAll(keys).hashCode; } 
@override String toString() { return 'ShieldCredentials(keys: $keys)'; } 
 }
