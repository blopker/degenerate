// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Targeted placement mode.
@immutable final class WorkersPlacementInfoRequestTargeted3Mode {const WorkersPlacementInfoRequestTargeted3Mode._(this.value);

factory WorkersPlacementInfoRequestTargeted3Mode.fromJson(String json) { return switch (json) {
  'targeted' => targeted,
  _ => WorkersPlacementInfoRequestTargeted3Mode._(json),
}; }

static const WorkersPlacementInfoRequestTargeted3Mode targeted = WorkersPlacementInfoRequestTargeted3Mode._('targeted');

static const List<WorkersPlacementInfoRequestTargeted3Mode> values = [targeted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersPlacementInfoRequestTargeted3Mode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersPlacementInfoRequestTargeted3Mode($value)'; } 
 }
@immutable final class WorkersPlacementInfoRequestTargeted3 {const WorkersPlacementInfoRequestTargeted3({required this.host, required this.mode, });

factory WorkersPlacementInfoRequestTargeted3.fromJson(Map<String, dynamic> json) { return WorkersPlacementInfoRequestTargeted3(
  host: json['host'] as String,
  mode: WorkersPlacementInfoRequestTargeted3Mode.fromJson(json['mode'] as String),
); }

/// TCP host and port for targeted placement.
final String host;

/// Targeted placement mode.
final WorkersPlacementInfoRequestTargeted3Mode mode;

Map<String, dynamic> toJson() { return {
  'host': host,
  'mode': mode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('host') && json['host'] is String &&
      json.containsKey('mode'); } 
WorkersPlacementInfoRequestTargeted3 copyWith({String? host, WorkersPlacementInfoRequestTargeted3Mode? mode, }) { return WorkersPlacementInfoRequestTargeted3(
  host: host ?? this.host,
  mode: mode ?? this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersPlacementInfoRequestTargeted3 &&
          host == other.host &&
          mode == other.mode; } 
@override int get hashCode { return Object.hash(host, mode); } 
@override String toString() { return 'WorkersPlacementInfoRequestTargeted3(host: $host, mode: $mode)'; } 
 }
