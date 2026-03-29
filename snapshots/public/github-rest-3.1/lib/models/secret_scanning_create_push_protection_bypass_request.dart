// GENERATED CODE - DO NOT MODIFY BY HAND

import 'secret_scanning_push_protection_bypass_placeholder_id.dart';import 'secret_scanning_push_protection_bypass_reason.dart';final class SecretScanningCreatePushProtectionBypassRequest {const SecretScanningCreatePushProtectionBypassRequest({required this.reason, required this.placeholderId, });

factory SecretScanningCreatePushProtectionBypassRequest.fromJson(Map<String, dynamic> json) { return SecretScanningCreatePushProtectionBypassRequest(
  reason: SecretScanningPushProtectionBypassReason.fromJson(json['reason'] as String),
  placeholderId: SecretScanningPushProtectionBypassPlaceholderId.fromJson(json['placeholder_id'] as String),
); }

/// The reason for bypassing push protection.
final SecretScanningPushProtectionBypassReason reason;

/// The ID of the push protection bypass placeholder. This value is returned on any push protected routes.
final SecretScanningPushProtectionBypassPlaceholderId placeholderId;

Map<String, dynamic> toJson() { return {
  'reason': reason.toJson(),
  'placeholder_id': placeholderId.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('reason') &&
      json.containsKey('placeholder_id'); } 
SecretScanningCreatePushProtectionBypassRequest copyWith({SecretScanningPushProtectionBypassReason? reason, SecretScanningPushProtectionBypassPlaceholderId? placeholderId, }) { return SecretScanningCreatePushProtectionBypassRequest(
  reason: reason ?? this.reason,
  placeholderId: placeholderId ?? this.placeholderId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningCreatePushProtectionBypassRequest &&
          reason == other.reason &&
          placeholderId == other.placeholderId; } 
@override int get hashCode { return Object.hash(reason, placeholderId); } 
@override String toString() { return 'SecretScanningCreatePushProtectionBypassRequest(reason: $reason, placeholderId: $placeholderId)'; } 
 }
