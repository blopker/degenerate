// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Which type of organization repositories have access to the organization secret. `selected` means only the repositories specified by `selected_repository_ids` can access the secret.
@immutable final class CodespacesCreateOrUpdateOrgSecretRequestVisibility {const CodespacesCreateOrUpdateOrgSecretRequestVisibility._(this.value);

factory CodespacesCreateOrUpdateOrgSecretRequestVisibility.fromJson(String json) { return switch (json) {
  'all' => all,
  'private' => private,
  'selected' => selected,
  _ => CodespacesCreateOrUpdateOrgSecretRequestVisibility._(json),
}; }

static const CodespacesCreateOrUpdateOrgSecretRequestVisibility all = CodespacesCreateOrUpdateOrgSecretRequestVisibility._('all');

static const CodespacesCreateOrUpdateOrgSecretRequestVisibility private = CodespacesCreateOrUpdateOrgSecretRequestVisibility._('private');

static const CodespacesCreateOrUpdateOrgSecretRequestVisibility selected = CodespacesCreateOrUpdateOrgSecretRequestVisibility._('selected');

static const List<CodespacesCreateOrUpdateOrgSecretRequestVisibility> values = [all, private, selected];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodespacesCreateOrUpdateOrgSecretRequestVisibility && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CodespacesCreateOrUpdateOrgSecretRequestVisibility($value)'; } 
 }
@immutable final class CodespacesCreateOrUpdateOrgSecretRequest {const CodespacesCreateOrUpdateOrgSecretRequest({required this.visibility, this.encryptedValue, this.keyId, this.selectedRepositoryIds, });

factory CodespacesCreateOrUpdateOrgSecretRequest.fromJson(Map<String, dynamic> json) { return CodespacesCreateOrUpdateOrgSecretRequest(
  encryptedValue: json['encrypted_value'] as String?,
  keyId: json['key_id'] as String?,
  visibility: CodespacesCreateOrUpdateOrgSecretRequestVisibility.fromJson(json['visibility'] as String),
  selectedRepositoryIds: (json['selected_repository_ids'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
); }

/// The value for your secret, encrypted with [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages) using the public key retrieved from the [Get an organization public key](https://docs.github.com/rest/codespaces/organization-secrets#get-an-organization-public-key) endpoint.
final String? encryptedValue;

/// The ID of the key you used to encrypt the secret.
final String? keyId;

/// Which type of organization repositories have access to the organization secret. `selected` means only the repositories specified by `selected_repository_ids` can access the secret.
final CodespacesCreateOrUpdateOrgSecretRequestVisibility visibility;

/// An array of repository IDs that can access the organization secret. You can only provide a list of repository IDs when the `visibility` is set to `selected`. You can manage the list of selected repositories using the [List selected repositories for an organization secret](https://docs.github.com/rest/codespaces/organization-secrets#list-selected-repositories-for-an-organization-secret), [Set selected repositories for an organization secret](https://docs.github.com/rest/codespaces/organization-secrets#set-selected-repositories-for-an-organization-secret), and [Remove selected repository from an organization secret](https://docs.github.com/rest/codespaces/organization-secrets#remove-selected-repository-from-an-organization-secret) endpoints.
final List<int>? selectedRepositoryIds;

Map<String, dynamic> toJson() { return {
  'encrypted_value': ?encryptedValue,
  'key_id': ?keyId,
  'visibility': visibility.toJson(),
  'selected_repository_ids': ?selectedRepositoryIds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('visibility'); } 
CodespacesCreateOrUpdateOrgSecretRequest copyWith({String Function()? encryptedValue, String Function()? keyId, CodespacesCreateOrUpdateOrgSecretRequestVisibility? visibility, List<int> Function()? selectedRepositoryIds, }) { return CodespacesCreateOrUpdateOrgSecretRequest(
  encryptedValue: encryptedValue != null ? encryptedValue() : this.encryptedValue,
  keyId: keyId != null ? keyId() : this.keyId,
  visibility: visibility ?? this.visibility,
  selectedRepositoryIds: selectedRepositoryIds != null ? selectedRepositoryIds() : this.selectedRepositoryIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodespacesCreateOrUpdateOrgSecretRequest &&
          encryptedValue == other.encryptedValue &&
          keyId == other.keyId &&
          visibility == other.visibility &&
          listEquals(selectedRepositoryIds, other.selectedRepositoryIds); } 
@override int get hashCode { return Object.hash(encryptedValue, keyId, visibility, Object.hashAll(selectedRepositoryIds ?? const [])); } 
@override String toString() { return 'CodespacesCreateOrUpdateOrgSecretRequest(encryptedValue: $encryptedValue, keyId: $keyId, visibility: $visibility, selectedRepositoryIds: $selectedRepositoryIds)'; } 
 }
