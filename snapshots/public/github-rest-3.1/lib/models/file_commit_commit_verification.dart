// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class FileCommitCommitVerification {const FileCommitCommitVerification({this.verified, this.reason, this.signature = const Omittable.absent(), this.payload = const Omittable.absent(), this.verifiedAt = const Omittable.absent(), });

factory FileCommitCommitVerification.fromJson(Map<String, dynamic> json) { return FileCommitCommitVerification(
  verified: json['verified'] as bool?,
  reason: json['reason'] as String?,
  signature: json.containsKey('signature') ? Omittable(json['signature'] as String?) : const Omittable.absent(),
  payload: json.containsKey('payload') ? Omittable(json['payload'] as String?) : const Omittable.absent(),
  verifiedAt: json.containsKey('verified_at') ? Omittable(json['verified_at'] as String?) : const Omittable.absent(),
); }

final bool? verified;

final String? reason;

final Omittable<String?> signature;

final Omittable<String?> payload;

final Omittable<String?> verifiedAt;

Map<String, dynamic> toJson() { return {
  'verified': ?verified,
  'reason': ?reason,
  if (signature.isPresent) 'signature': signature.value,
  if (payload.isPresent) 'payload': payload.value,
  if (verifiedAt.isPresent) 'verified_at': verifiedAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'verified', 'reason', 'signature', 'payload', 'verified_at'}.contains(key)); } 
FileCommitCommitVerification copyWith({bool? Function()? verified, String? Function()? reason, Omittable<String?>? signature, Omittable<String?>? payload, Omittable<String?>? verifiedAt, }) { return FileCommitCommitVerification(
  verified: verified != null ? verified() : this.verified,
  reason: reason != null ? reason() : this.reason,
  signature: signature ?? this.signature,
  payload: payload ?? this.payload,
  verifiedAt: verifiedAt ?? this.verifiedAt,
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
