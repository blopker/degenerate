// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_push_protection_bypass_reason.dart';@immutable final class SecretScanningPushProtectionBypass {const SecretScanningPushProtectionBypass({this.reason, this.expireAt = const Omittable.absent(), this.tokenType, });

factory SecretScanningPushProtectionBypass.fromJson(Map<String, dynamic> json) { return SecretScanningPushProtectionBypass(
  reason: json['reason'] != null ? SecretScanningPushProtectionBypassReason.fromJson(json['reason'] as String) : null,
  expireAt: json.containsKey('expire_at') ? Omittable(json['expire_at'] != null ? DateTime.parse(json['expire_at'] as String) : null) : const Omittable.absent(),
  tokenType: json['token_type'] as String?,
); }

/// The reason for bypassing push protection.
final SecretScanningPushProtectionBypassReason? reason;

/// The time that the bypass will expire in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
final Omittable<DateTime?> expireAt;

/// The token type this bypass is for.
final String? tokenType;

Map<String, dynamic> toJson() { return {
  if (reason != null) 'reason': reason?.toJson(),
  if (expireAt.isPresent) 'expire_at': expireAt.value?.toIso8601String(),
  'token_type': ?tokenType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reason', 'expire_at', 'token_type'}.contains(key)); } 
SecretScanningPushProtectionBypass copyWith({SecretScanningPushProtectionBypassReason? Function()? reason, Omittable<DateTime?>? expireAt, String? Function()? tokenType, }) { return SecretScanningPushProtectionBypass(
  reason: reason != null ? reason() : this.reason,
  expireAt: expireAt ?? this.expireAt,
  tokenType: tokenType != null ? tokenType() : this.tokenType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningPushProtectionBypass &&
          reason == other.reason &&
          expireAt == other.expireAt &&
          tokenType == other.tokenType; } 
@override int get hashCode { return Object.hash(reason, expireAt, tokenType); } 
@override String toString() { return 'SecretScanningPushProtectionBypass(reason: $reason, expireAt: $expireAt, tokenType: $tokenType)'; } 
 }
