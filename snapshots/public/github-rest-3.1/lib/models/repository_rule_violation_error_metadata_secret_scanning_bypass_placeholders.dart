// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_push_protection_bypass_placeholder_id.dart';@immutable final class RepositoryRuleViolationErrorMetadataSecretScanningBypassPlaceholders {const RepositoryRuleViolationErrorMetadataSecretScanningBypassPlaceholders({this.placeholderId, this.tokenType, });

factory RepositoryRuleViolationErrorMetadataSecretScanningBypassPlaceholders.fromJson(Map<String, dynamic> json) { return RepositoryRuleViolationErrorMetadataSecretScanningBypassPlaceholders(
  placeholderId: json['placeholder_id'] != null ? SecretScanningPushProtectionBypassPlaceholderId.fromJson(json['placeholder_id'] as String) : null,
  tokenType: json['token_type'] as String?,
); }

/// The ID of the push protection bypass placeholder. This value is returned on any push protected routes.
final SecretScanningPushProtectionBypassPlaceholderId? placeholderId;

final String? tokenType;

Map<String, dynamic> toJson() { return {
  if (placeholderId != null) 'placeholder_id': placeholderId?.toJson(),
  'token_type': ?tokenType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'placeholder_id', 'token_type'}.contains(key)); } 
RepositoryRuleViolationErrorMetadataSecretScanningBypassPlaceholders copyWith({SecretScanningPushProtectionBypassPlaceholderId Function()? placeholderId, String Function()? tokenType, }) { return RepositoryRuleViolationErrorMetadataSecretScanningBypassPlaceholders(
  placeholderId: placeholderId != null ? placeholderId() : this.placeholderId,
  tokenType: tokenType != null ? tokenType() : this.tokenType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleViolationErrorMetadataSecretScanningBypassPlaceholders &&
          placeholderId == other.placeholderId &&
          tokenType == other.tokenType; } 
@override int get hashCode { return Object.hash(placeholderId, tokenType); } 
@override String toString() { return 'RepositoryRuleViolationErrorMetadataSecretScanningBypassPlaceholders(placeholderId: $placeholderId, tokenType: $tokenType)'; } 
 }
