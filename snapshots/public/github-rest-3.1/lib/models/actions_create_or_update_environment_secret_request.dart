// GENERATED CODE - DO NOT MODIFY BY HAND

final class ActionsCreateOrUpdateEnvironmentSecretRequest {const ActionsCreateOrUpdateEnvironmentSecretRequest({required this.encryptedValue, required this.keyId, });

factory ActionsCreateOrUpdateEnvironmentSecretRequest.fromJson(Map<String, dynamic> json) { return ActionsCreateOrUpdateEnvironmentSecretRequest(
  encryptedValue: json['encrypted_value'] as String,
  keyId: json['key_id'] as String,
); }

/// Value for your secret, encrypted with [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages) using the public key retrieved from the [Get an environment public key](https://docs.github.com/rest/actions/secrets#get-an-environment-public-key) endpoint.
final String encryptedValue;

/// ID of the key you used to encrypt the secret.
final String keyId;

Map<String, dynamic> toJson() { return {
  'encrypted_value': encryptedValue,
  'key_id': keyId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('encrypted_value') && json['encrypted_value'] is String &&
      json.containsKey('key_id') && json['key_id'] is String; } 
ActionsCreateOrUpdateEnvironmentSecretRequest copyWith({String? encryptedValue, String? keyId, }) { return ActionsCreateOrUpdateEnvironmentSecretRequest(
  encryptedValue: encryptedValue ?? this.encryptedValue,
  keyId: keyId ?? this.keyId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsCreateOrUpdateEnvironmentSecretRequest &&
          encryptedValue == other.encryptedValue &&
          keyId == other.keyId; } 
@override int get hashCode { return Object.hash(encryptedValue, keyId); } 
@override String toString() { return 'ActionsCreateOrUpdateEnvironmentSecretRequest(encryptedValue: $encryptedValue, keyId: $keyId)'; } 
 }
