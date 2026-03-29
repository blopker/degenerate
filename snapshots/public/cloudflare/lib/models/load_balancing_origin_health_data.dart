// GENERATED CODE - DO NOT MODIFY BY HAND

/// The origin ipv4/ipv6 address or domain name mapped to its health data.
final class LoadBalancingOriginHealthData {const LoadBalancingOriginHealthData({this.failureReason, this.healthy, this.responseCode, this.rtt, });

factory LoadBalancingOriginHealthData.fromJson(Map<String, dynamic> json) { return LoadBalancingOriginHealthData(
  failureReason: json['failure_reason'] as String?,
  healthy: json['healthy'] as bool?,
  responseCode: json['response_code'] != null ? (json['response_code'] as num).toDouble() : null,
  rtt: json['rtt'] as String?,
); }

final String? failureReason;

final bool? healthy;

final double? responseCode;

final String? rtt;

Map<String, dynamic> toJson() { return {
  'failure_reason': ?failureReason,
  'healthy': ?healthy,
  'response_code': ?responseCode,
  'rtt': ?rtt,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
LoadBalancingOriginHealthData copyWith({String Function()? failureReason, bool Function()? healthy, double Function()? responseCode, String Function()? rtt, }) { return LoadBalancingOriginHealthData(
  failureReason: failureReason != null ? failureReason() : this.failureReason,
  healthy: healthy != null ? healthy() : this.healthy,
  responseCode: responseCode != null ? responseCode() : this.responseCode,
  rtt: rtt != null ? rtt() : this.rtt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingOriginHealthData &&
          failureReason == other.failureReason &&
          healthy == other.healthy &&
          responseCode == other.responseCode &&
          rtt == other.rtt; } 
@override int get hashCode { return Object.hash(failureReason, healthy, responseCode, rtt); } 
@override String toString() { return 'LoadBalancingOriginHealthData(failureReason: $failureReason, healthy: $healthy, responseCode: $responseCode, rtt: $rtt)'; } 
 }
