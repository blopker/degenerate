// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dns_analytics_time_delta.dart';final class DnsAnalyticsReportBytimeQuery {const DnsAnalyticsReportBytimeQuery({required this.timeDelta});

factory DnsAnalyticsReportBytimeQuery.fromJson(Map<String, dynamic> json) { return DnsAnalyticsReportBytimeQuery(
  timeDelta: DnsAnalyticsTimeDelta.fromJson(json['time_delta'] as String),
); }

final DnsAnalyticsTimeDelta timeDelta;

Map<String, dynamic> toJson() { return {
  'time_delta': timeDelta.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('time_delta'); } 
DnsAnalyticsReportBytimeQuery copyWith({DnsAnalyticsTimeDelta? timeDelta}) { return DnsAnalyticsReportBytimeQuery(
  timeDelta: timeDelta ?? this.timeDelta,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsAnalyticsReportBytimeQuery &&
          timeDelta == other.timeDelta; } 
@override int get hashCode { return timeDelta.hashCode; } 
@override String toString() { return 'DnsAnalyticsReportBytimeQuery(timeDelta: $timeDelta)'; } 
 }
