// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bandwidth_by_colo.dart';import 'requests_by_colo.dart';import 'since.dart';import 'threats.dart';import 'until.dart';final class TimeseriesByColo2 {const TimeseriesByColo2({this.bandwidth, this.requests, this.since, this.threats, this.until, });

factory TimeseriesByColo2.fromJson(Map<String, dynamic> json) { return TimeseriesByColo2(
  bandwidth: json['bandwidth'] != null ? BandwidthByColo.fromJson(json['bandwidth'] as Map<String, dynamic>) : null,
  requests: json['requests'] != null ? RequestsByColo.fromJson(json['requests'] as Map<String, dynamic>) : null,
  since: json['since'] != null ? OneOf2.parse(json['since'], fromA: (v) => v as String, fromB: (v) => (v as num).toInt(),) : null,
  threats: json['threats'] != null ? Threats.fromJson(json['threats'] as Map<String, dynamic>) : null,
  until: json['until'] != null ? OneOf2.parse(json['until'], fromA: (v) => v as String, fromB: (v) => (v as num).toInt(),) : null,
); }

final BandwidthByColo? bandwidth;

final RequestsByColo? requests;

final Since? since;

final Threats? threats;

final Until? until;

Map<String, dynamic> toJson() { return {
  if (bandwidth != null) 'bandwidth': bandwidth?.toJson(),
  if (requests != null) 'requests': requests?.toJson(),
  if (since != null) 'since': since?.toJson(),
  if (threats != null) 'threats': threats?.toJson(),
  if (until != null) 'until': until?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TimeseriesByColo2 copyWith({BandwidthByColo Function()? bandwidth, RequestsByColo Function()? requests, Since Function()? since, Threats Function()? threats, Until Function()? until, }) { return TimeseriesByColo2(
  bandwidth: bandwidth != null ? bandwidth() : this.bandwidth,
  requests: requests != null ? requests() : this.requests,
  since: since != null ? since() : this.since,
  threats: threats != null ? threats() : this.threats,
  until: until != null ? until() : this.until,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TimeseriesByColo2 &&
          bandwidth == other.bandwidth &&
          requests == other.requests &&
          since == other.since &&
          threats == other.threats &&
          until == other.until; } 
@override int get hashCode { return Object.hash(bandwidth, requests, since, threats, until); } 
@override String toString() { return 'TimeseriesByColo2(bandwidth: $bandwidth, requests: $requests, since: $since, threats: $threats, until: $until)'; } 
 }
