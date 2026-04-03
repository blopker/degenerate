// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Data-layout partitioning for sinks.
@immutable final class CloudflarePipelinesR2TablePublicPartitioning {const CloudflarePipelinesR2TablePublicPartitioning({this.timePattern});

factory CloudflarePipelinesR2TablePublicPartitioning.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesR2TablePublicPartitioning(
  timePattern: json['time_pattern'] as String?,
); }

/// The pattern of the date string
final String? timePattern;

Map<String, dynamic> toJson() { return {
  'time_pattern': ?timePattern,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'time_pattern'}.contains(key)); } 
CloudflarePipelinesR2TablePublicPartitioning copyWith({String Function()? timePattern}) { return CloudflarePipelinesR2TablePublicPartitioning(
  timePattern: timePattern != null ? timePattern() : this.timePattern,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesR2TablePublicPartitioning &&
          timePattern == other.timePattern; } 
@override int get hashCode { return timePattern.hashCode; } 
@override String toString() { return 'CloudflarePipelinesR2TablePublicPartitioning(timePattern: $timePattern)'; } 
 }
