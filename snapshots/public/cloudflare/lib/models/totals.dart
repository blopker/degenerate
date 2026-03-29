// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bandwidth2.dart';import 'pageviews.dart';import 'requests.dart';import 'since.dart';import 'threats.dart';import 'uniques.dart';import 'until.dart';/// Breakdown of totals by data type.
final class Totals {const Totals({this.bandwidth, this.pageviews, this.requests, this.since, this.threats, this.uniques, this.until, });

factory Totals.fromJson(Map<String, dynamic> json) { return Totals(
  bandwidth: json['bandwidth'] != null ? Bandwidth2.fromJson(json['bandwidth'] as Map<String, dynamic>) : null,
  pageviews: json['pageviews'] != null ? Pageviews.fromJson(json['pageviews'] as Map<String, dynamic>) : null,
  requests: json['requests'] != null ? Requests.fromJson(json['requests'] as Map<String, dynamic>) : null,
  since: json['since'] != null ? OneOf2.parse(json['since'], fromA: (v) => v as String, fromB: (v) => (v as num).toInt(),) : null,
  threats: json['threats'] != null ? Threats.fromJson(json['threats'] as Map<String, dynamic>) : null,
  uniques: json['uniques'] != null ? Uniques.fromJson(json['uniques'] as Map<String, dynamic>) : null,
  until: json['until'] != null ? OneOf2.parse(json['until'], fromA: (v) => v as String, fromB: (v) => (v as num).toInt(),) : null,
); }

final Bandwidth2? bandwidth;

final Pageviews? pageviews;

final Requests? requests;

final Since? since;

final Threats? threats;

final Uniques? uniques;

final Until? until;

Map<String, dynamic> toJson() { return {
  if (bandwidth != null) 'bandwidth': bandwidth?.toJson(),
  if (pageviews != null) 'pageviews': pageviews?.toJson(),
  if (requests != null) 'requests': requests?.toJson(),
  if (since != null) 'since': since?.toJson(),
  if (threats != null) 'threats': threats?.toJson(),
  if (uniques != null) 'uniques': uniques?.toJson(),
  if (until != null) 'until': until?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Totals copyWith({Bandwidth2 Function()? bandwidth, Pageviews Function()? pageviews, Requests Function()? requests, Since Function()? since, Threats Function()? threats, Uniques Function()? uniques, Until Function()? until, }) { return Totals(
  bandwidth: bandwidth != null ? bandwidth() : this.bandwidth,
  pageviews: pageviews != null ? pageviews() : this.pageviews,
  requests: requests != null ? requests() : this.requests,
  since: since != null ? since() : this.since,
  threats: threats != null ? threats() : this.threats,
  uniques: uniques != null ? uniques() : this.uniques,
  until: until != null ? until() : this.until,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Totals &&
          bandwidth == other.bandwidth &&
          pageviews == other.pageviews &&
          requests == other.requests &&
          since == other.since &&
          threats == other.threats &&
          uniques == other.uniques &&
          until == other.until; } 
@override int get hashCode { return Object.hash(bandwidth, pageviews, requests, since, threats, uniques, until); } 
@override String toString() { return 'Totals(bandwidth: $bandwidth, pageviews: $pageviews, requests: $requests, since: $since, threats: $threats, uniques: $uniques, until: $until)'; } 
 }
