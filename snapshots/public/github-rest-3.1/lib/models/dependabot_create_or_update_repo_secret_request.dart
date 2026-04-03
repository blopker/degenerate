// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DependabotCreateOrUpdateRepoSecretRequest {const DependabotCreateOrUpdateRepoSecretRequest({this.encryptedValue, this.keyId, });

factory DependabotCreateOrUpdateRepoSecretRequest.fromJson(Map<String, dynamic> json) { return DependabotCreateOrUpdateRepoSecretRequest(
  encryptedValue: json['encrypted_value'] as String?,
  keyId: json['key_id'] as String?,
); }

/// Value for your secret, encrypted with [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages) using the public key retrieved from the [Get a repository public key](https://docs.github.com/rest/dependabot/secrets#get-a-repository-public-key) endpoint.
final String? encryptedValue;

/// ID of the key you used to encrypt the secret.
final String? keyId;

Map<String, dynamic> toJson() { return {
  'encrypted_value': ?encryptedValue,
  'key_id': ?keyId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'encrypted_value', 'key_id'}.contains(key)); } 
DependabotCreateOrUpdateRepoSecretRequest copyWith({String Function()? encryptedValue, String Function()? keyId, }) { return DependabotCreateOrUpdateRepoSecretRequest(
  encryptedValue: encryptedValue != null ? encryptedValue() : this.encryptedValue,
  keyId: keyId != null ? keyId() : this.keyId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DependabotCreateOrUpdateRepoSecretRequest &&
          encryptedValue == other.encryptedValue &&
          keyId == other.keyId; } 
@override int get hashCode { return Object.hash(encryptedValue, keyId); } 
@override String toString() { return 'DependabotCreateOrUpdateRepoSecretRequest(encryptedValue: $encryptedValue, keyId: $keyId)'; } 
 }
