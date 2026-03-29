// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_payload_log_masking_level.dart';final class DlpPayloadLogSetting {const DlpPayloadLogSetting({this.maskingLevel, this.publicKey, required this.updatedAt, });

factory DlpPayloadLogSetting.fromJson(Map<String, dynamic> json) { return DlpPayloadLogSetting(
  maskingLevel: json['masking_level'] != null ? DlpPayloadLogMaskingLevel.fromJson(json['masking_level'] as String) : null,
  publicKey: json['public_key'] as String?,
  updatedAt: DateTime.parse(json['updated_at'] as String),
); }

/// Masking level for payload logs.
/// 
/// - `full`: The entire payload is masked.
/// - `partial`: Only partial payload content is masked.
/// - `clear`: No masking is applied to the payload content.
/// - `default`: DLP uses its default masking behavior.
final DlpPayloadLogMaskingLevel? maskingLevel;

/// Base64-encoded public key for encrypting payload logs. Null when payload logging is disabled.
final String? publicKey;

final DateTime updatedAt;

Map<String, dynamic> toJson() { return {
  if (maskingLevel != null) 'masking_level': maskingLevel?.toJson(),
  'public_key': ?publicKey,
  'updated_at': updatedAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('updated_at') && json['updated_at'] is String; } 
DlpPayloadLogSetting copyWith({DlpPayloadLogMaskingLevel Function()? maskingLevel, String? Function()? publicKey, DateTime? updatedAt, }) { return DlpPayloadLogSetting(
  maskingLevel: maskingLevel != null ? maskingLevel() : this.maskingLevel,
  publicKey: publicKey != null ? publicKey() : this.publicKey,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpPayloadLogSetting &&
          maskingLevel == other.maskingLevel &&
          publicKey == other.publicKey &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(maskingLevel, publicKey, updatedAt); } 
@override String toString() { return 'DlpPayloadLogSetting(maskingLevel: $maskingLevel, publicKey: $publicKey, updatedAt: $updatedAt)'; } 
 }
