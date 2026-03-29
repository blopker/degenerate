// GENERATED CODE - DO NOT MODIFY BY HAND

/// Targeted placement mode.
final class WorkersPlacementInfoTargetedMode {const WorkersPlacementInfoTargetedMode._(this.value);

factory WorkersPlacementInfoTargetedMode.fromJson(String json) { return switch (json) {
  'targeted' => targeted,
  _ => WorkersPlacementInfoTargetedMode._(json),
}; }

static const WorkersPlacementInfoTargetedMode targeted = WorkersPlacementInfoTargetedMode._('targeted');

static const List<WorkersPlacementInfoTargetedMode> values = [targeted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersPlacementInfoTargetedMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersPlacementInfoTargetedMode($value)'; } 
 }
final class WorkersPlacementInfoTargeted {const WorkersPlacementInfoTargeted({required this.mode, required this.region, });

factory WorkersPlacementInfoTargeted.fromJson(Map<String, dynamic> json) { return WorkersPlacementInfoTargeted(
  mode: WorkersPlacementInfoTargetedMode.fromJson(json['mode'] as String),
  region: json['region'] as String,
); }

/// Targeted placement mode.
final WorkersPlacementInfoTargetedMode mode;

/// Cloud region for targeted placement in format 'provider:region'.
final String region;

Map<String, dynamic> toJson() { return {
  'mode': mode.toJson(),
  'region': region,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mode') &&
      json.containsKey('region') && json['region'] is String; } 
WorkersPlacementInfoTargeted copyWith({WorkersPlacementInfoTargetedMode? mode, String? region, }) { return WorkersPlacementInfoTargeted(
  mode: mode ?? this.mode,
  region: region ?? this.region,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersPlacementInfoTargeted &&
          mode == other.mode &&
          region == other.region; } 
@override int get hashCode { return Object.hash(mode, region); } 
@override String toString() { return 'WorkersPlacementInfoTargeted(mode: $mode, region: $region)'; } 
 }
