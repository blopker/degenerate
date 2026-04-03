// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Time range for the query execution
@immutable final class WorkersObservabilityQueryRunTimeframe {const WorkersObservabilityQueryRunTimeframe({required this.from, required this.to, });

factory WorkersObservabilityQueryRunTimeframe.fromJson(Map<String, dynamic> json) { return WorkersObservabilityQueryRunTimeframe(
  from: (json['from'] as num).toDouble(),
  to: (json['to'] as num).toDouble(),
); }

/// Start timestamp for the query timeframe (Unix timestamp in milliseconds)
final double from;

/// End timestamp for the query timeframe (Unix timestamp in milliseconds)
final double to;

Map<String, dynamic> toJson() { return {
  'from': from,
  'to': to,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is num &&
      json.containsKey('to') && json['to'] is num; } 
WorkersObservabilityQueryRunTimeframe copyWith({double? from, double? to, }) { return WorkersObservabilityQueryRunTimeframe(
  from: from ?? this.from,
  to: to ?? this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersObservabilityQueryRunTimeframe &&
          from == other.from &&
          to == other.to; } 
@override int get hashCode { return Object.hash(from, to); } 
@override String toString() { return 'WorkersObservabilityQueryRunTimeframe(from: $from, to: $to)'; } 
 }
