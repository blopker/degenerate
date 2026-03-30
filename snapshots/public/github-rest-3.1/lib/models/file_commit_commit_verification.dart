// GENERATED CODE - DO NOT MODIFY BY HAND

final class FileCommitCommitVerification {const FileCommitCommitVerification({this.verified, this.reason, this.signature, this.payload, this.verifiedAt, });

factory FileCommitCommitVerification.fromJson(Map<String, dynamic> json) { return FileCommitCommitVerification(
  verified: json['verified'] as bool?,
  reason: json['reason'] as String?,
  signature: json['signature'] as String?,
  payload: json['payload'] as String?,
  verifiedAt: json['verified_at'] as String?,
); }

final bool? verified;

final String? reason;

final String? signature;

final String? payload;

final String? verifiedAt;

Map<String, dynamic> toJson() { return {
  'verified': ?verified,
  'reason': ?reason,
  'signature': ?signature,
  'payload': ?payload,
  'verified_at': ?verifiedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'verified', 'reason', 'signature', 'payload', 'verified_at'}.contains(key)); } 
FileCommitCommitVerification copyWith({bool Function()? verified, String Function()? reason, String? Function()? signature, String? Function()? payload, String? Function()? verifiedAt, }) { return FileCommitCommitVerification(
  verified: verified != null ? verified() : this.verified,
  reason: reason != null ? reason() : this.reason,
  signature: signature != null ? signature() : this.signature,
  payload: payload != null ? payload() : this.payload,
  verifiedAt: verifiedAt != null ? verifiedAt() : this.verifiedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FileCommitCommitVerification &&
          verified == other.verified &&
          reason == other.reason &&
          signature == other.signature &&
          payload == other.payload &&
          verifiedAt == other.verifiedAt; } 
@override int get hashCode { return Object.hash(verified, reason, signature, payload, verifiedAt); } 
@override String toString() { return 'FileCommitCommitVerification(verified: $verified, reason: $reason, signature: $signature, payload: $payload, verifiedAt: $verifiedAt)'; } 
 }
