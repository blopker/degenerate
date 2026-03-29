// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'since.dart';import 'until.dart';/// The exact parameters/timestamps the analytics service used to return data.
final class QueryResponse {const QueryResponse({this.since, this.timeDelta, this.until, });

factory QueryResponse.fromJson(Map<String, dynamic> json) { return QueryResponse(
  since: json['since'] != null ? OneOf2.parse(json['since'], fromA: (v) => v as String, fromB: (v) => (v as num).toInt(),) : null,
  timeDelta: json['time_delta'] != null ? (json['time_delta'] as num).toInt() : null,
  until: json['until'] != null ? OneOf2.parse(json['until'], fromA: (v) => v as String, fromB: (v) => (v as num).toInt(),) : null,
); }

final Since? since;

/// The amount of time (in minutes) that each data point in the timeseries represents. The granularity of the time-series returned (e.g. each bucket in the time series representing 1-minute vs 1-day) is calculated by the API based on the time-range provided to the API.
final int? timeDelta;

final Until? until;

Map<String, dynamic> toJson() { return {
  if (since != null) 'since': since?.toJson(),
  'time_delta': ?timeDelta,
  if (until != null) 'until': until?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
QueryResponse copyWith({Since Function()? since, int Function()? timeDelta, Until Function()? until, }) { return QueryResponse(
  since: since != null ? since() : this.since,
  timeDelta: timeDelta != null ? timeDelta() : this.timeDelta,
  until: until != null ? until() : this.until,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QueryResponse &&
          since == other.since &&
          timeDelta == other.timeDelta &&
          until == other.until; } 
@override int get hashCode { return Object.hash(since, timeDelta, until); } 
@override String toString() { return 'QueryResponse(since: $since, timeDelta: $timeDelta, until: $until)'; } 
 }
