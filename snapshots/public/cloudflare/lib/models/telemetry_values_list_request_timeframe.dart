// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TelemetryValuesListRequestTimeframe {const TelemetryValuesListRequestTimeframe({required this.from, required this.to, });

factory TelemetryValuesListRequestTimeframe.fromJson(Map<String, dynamic> json) { return TelemetryValuesListRequestTimeframe(
  from: (json['from'] as num).toDouble(),
  to: (json['to'] as num).toDouble(),
); }

final double from;

final double to;

Map<String, dynamic> toJson() { return {
  'from': from,
  'to': to,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is num &&
      json.containsKey('to') && json['to'] is num; } 
TelemetryValuesListRequestTimeframe copyWith({double? from, double? to, }) { return TelemetryValuesListRequestTimeframe(
  from: from ?? this.from,
  to: to ?? this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TelemetryValuesListRequestTimeframe &&
          from == other.from &&
          to == other.to; } 
@override int get hashCode { return Object.hash(from, to); } 
@override String toString() { return 'TelemetryValuesListRequestTimeframe(from: $from, to: $to)'; } 
 }
