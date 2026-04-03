// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UsersCreateGpgKeyForAuthenticatedUserRequest {const UsersCreateGpgKeyForAuthenticatedUserRequest({required this.armoredPublicKey, this.name, });

factory UsersCreateGpgKeyForAuthenticatedUserRequest.fromJson(Map<String, dynamic> json) { return UsersCreateGpgKeyForAuthenticatedUserRequest(
  name: json['name'] as String?,
  armoredPublicKey: json['armored_public_key'] as String,
); }

/// A descriptive name for the new key.
final String? name;

/// A GPG key in ASCII-armored format.
final String armoredPublicKey;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'armored_public_key': armoredPublicKey,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('armored_public_key') && json['armored_public_key'] is String; } 
UsersCreateGpgKeyForAuthenticatedUserRequest copyWith({String Function()? name, String? armoredPublicKey, }) { return UsersCreateGpgKeyForAuthenticatedUserRequest(
  name: name != null ? name() : this.name,
  armoredPublicKey: armoredPublicKey ?? this.armoredPublicKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsersCreateGpgKeyForAuthenticatedUserRequest &&
          name == other.name &&
          armoredPublicKey == other.armoredPublicKey; } 
@override int get hashCode { return Object.hash(name, armoredPublicKey); } 
@override String toString() { return 'UsersCreateGpgKeyForAuthenticatedUserRequest(name: $name, armoredPublicKey: $armoredPublicKey)'; } 
 }
