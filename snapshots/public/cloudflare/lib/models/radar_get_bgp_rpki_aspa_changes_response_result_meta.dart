// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetBgpRpkiAspaChangesResponseResultMeta {const RadarGetBgpRpkiAspaChangesResponseResultMeta({required this.dataTime, required this.queryTime, });

factory RadarGetBgpRpkiAspaChangesResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetBgpRpkiAspaChangesResponseResultMeta(
  dataTime: DateTime.parse(json['dataTime'] as String),
  queryTime: DateTime.parse(json['queryTime'] as String),
); }

/// Timestamp of the underlying data.
final DateTime dataTime;

/// Timestamp when the query was executed.
final DateTime queryTime;

Map<String, dynamic> toJson() { return {
  'dataTime': dataTime.toIso8601String(),
  'queryTime': queryTime.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('dataTime') && json['dataTime'] is String &&
      json.containsKey('queryTime') && json['queryTime'] is String; } 
RadarGetBgpRpkiAspaChangesResponseResultMeta copyWith({DateTime? dataTime, DateTime? queryTime, }) { return RadarGetBgpRpkiAspaChangesResponseResultMeta(
  dataTime: dataTime ?? this.dataTime,
  queryTime: queryTime ?? this.queryTime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpRpkiAspaChangesResponseResultMeta &&
          dataTime == other.dataTime &&
          queryTime == other.queryTime; } 
@override int get hashCode { return Object.hash(dataTime, queryTime); } 
@override String toString() { return 'RadarGetBgpRpkiAspaChangesResponseResultMeta(dataTime: $dataTime, queryTime: $queryTime)'; } 
 }
