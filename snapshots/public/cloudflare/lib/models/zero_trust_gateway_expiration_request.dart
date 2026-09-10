// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_timestamp.dart';/// Defines the expiration time stamp and default duration of a DNS policy. Takes precedence over the policy's `schedule` configuration, if any. This  does not apply to HTTP or network policies. Settable only for `dns` rules.
@immutable final class ZeroTrustGatewayExpirationRequest {const ZeroTrustGatewayExpirationRequest({required this.expiresAt, this.duration, });

factory ZeroTrustGatewayExpirationRequest.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayExpirationRequest(
  duration: json['duration'] != null ? (json['duration'] as num).toInt() : null,
  expiresAt: ZeroTrustGatewayTimestamp.fromJson(json['expires_at'] as String),
); }

/// Defines the default duration a policy active in minutes. Must set in order to use the `reset_expiration` endpoint on this rule.
final int? duration;

final ZeroTrustGatewayTimestamp expiresAt;

Map<String, dynamic> toJson() { return {
  'duration': ?duration,
  'expires_at': expiresAt.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('expires_at'); } 
ZeroTrustGatewayExpirationRequest copyWith({int? Function()? duration, ZeroTrustGatewayTimestamp? expiresAt, }) { return ZeroTrustGatewayExpirationRequest(
  duration: duration != null ? duration() : this.duration,
  expiresAt: expiresAt ?? this.expiresAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayExpirationRequest &&
          duration == other.duration &&
          expiresAt == other.expiresAt; } 
@override int get hashCode { return Object.hash(duration, expiresAt); } 
@override String toString() { return 'ZeroTrustGatewayExpirationRequest(duration: $duration, expiresAt: $expiresAt)'; } 
 }
