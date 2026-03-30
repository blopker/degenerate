// GENERATED CODE - DO NOT MODIFY BY HAND

final class CodespacesCreateOrUpdateRepoSecretRequest {const CodespacesCreateOrUpdateRepoSecretRequest({this.encryptedValue, this.keyId, });

factory CodespacesCreateOrUpdateRepoSecretRequest.fromJson(Map<String, dynamic> json) { return CodespacesCreateOrUpdateRepoSecretRequest(
  encryptedValue: json['encrypted_value'] as String?,
  keyId: json['key_id'] as String?,
); }

/// Value for your secret, encrypted with [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages) using the public key retrieved from the [Get a repository public key](https://docs.github.com/rest/codespaces/repository-secrets#get-a-repository-public-key) endpoint.
final String? encryptedValue;

/// ID of the key you used to encrypt the secret.
final String? keyId;

Map<String, dynamic> toJson() { return {
  'encrypted_value': ?encryptedValue,
  'key_id': ?keyId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'encrypted_value', 'key_id'}.contains(key)); } 
CodespacesCreateOrUpdateRepoSecretRequest copyWith({String Function()? encryptedValue, String Function()? keyId, }) { return CodespacesCreateOrUpdateRepoSecretRequest(
  encryptedValue: encryptedValue != null ? encryptedValue() : this.encryptedValue,
  keyId: keyId != null ? keyId() : this.keyId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodespacesCreateOrUpdateRepoSecretRequest &&
          encryptedValue == other.encryptedValue &&
          keyId == other.keyId; } 
@override int get hashCode { return Object.hash(encryptedValue, keyId); } 
@override String toString() { return 'CodespacesCreateOrUpdateRepoSecretRequest(encryptedValue: $encryptedValue, keyId: $keyId)'; } 
 }
