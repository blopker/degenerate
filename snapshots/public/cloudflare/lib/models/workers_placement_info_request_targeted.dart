// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Targeted placement mode.
@immutable final class WorkersPlacementInfoRequestTargetedMode {const WorkersPlacementInfoRequestTargetedMode._(this.value);

factory WorkersPlacementInfoRequestTargetedMode.fromJson(String json) { return switch (json) {
  'targeted' => targeted,
  _ => WorkersPlacementInfoRequestTargetedMode._(json),
}; }

static const WorkersPlacementInfoRequestTargetedMode targeted = WorkersPlacementInfoRequestTargetedMode._('targeted');

static const List<WorkersPlacementInfoRequestTargetedMode> values = [targeted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersPlacementInfoRequestTargetedMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersPlacementInfoRequestTargetedMode($value)'; } 
 }
@immutable final class WorkersPlacementInfoRequestTargeted {const WorkersPlacementInfoRequestTargeted({required this.mode, required this.region, });

factory WorkersPlacementInfoRequestTargeted.fromJson(Map<String, dynamic> json) { return WorkersPlacementInfoRequestTargeted(
  mode: WorkersPlacementInfoRequestTargetedMode.fromJson(json['mode'] as String),
  region: json['region'] as String,
); }

/// Targeted placement mode.
final WorkersPlacementInfoRequestTargetedMode mode;

/// Cloud region for targeted placement in format 'provider:region'.
final String region;

Map<String, dynamic> toJson() { return {
  'mode': mode.toJson(),
  'region': region,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mode') &&
      json.containsKey('region') && json['region'] is String; } 
WorkersPlacementInfoRequestTargeted copyWith({WorkersPlacementInfoRequestTargetedMode? mode, String? region, }) { return WorkersPlacementInfoRequestTargeted(
  mode: mode ?? this.mode,
  region: region ?? this.region,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersPlacementInfoRequestTargeted &&
          mode == other.mode &&
          region == other.region; } 
@override int get hashCode { return Object.hash(mode, region); } 
@override String toString() { return 'WorkersPlacementInfoRequestTargeted(mode: $mode, region: $region)'; } 
 }
