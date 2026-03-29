// GENERATED CODE - DO NOT MODIFY BY HAND

/// Enables [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
final class WorkersPlacementInfoNoStatusSmartMode {const WorkersPlacementInfoNoStatusSmartMode._(this.value);

factory WorkersPlacementInfoNoStatusSmartMode.fromJson(String json) { return switch (json) {
  'smart' => smart,
  _ => WorkersPlacementInfoNoStatusSmartMode._(json),
}; }

static const WorkersPlacementInfoNoStatusSmartMode smart = WorkersPlacementInfoNoStatusSmartMode._('smart');

static const List<WorkersPlacementInfoNoStatusSmartMode> values = [smart];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersPlacementInfoNoStatusSmartMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersPlacementInfoNoStatusSmartMode($value)'; } 
 }
final class WorkersPlacementInfoNoStatusSmart {const WorkersPlacementInfoNoStatusSmart({required this.mode});

factory WorkersPlacementInfoNoStatusSmart.fromJson(Map<String, dynamic> json) { return WorkersPlacementInfoNoStatusSmart(
  mode: WorkersPlacementInfoNoStatusSmartMode.fromJson(json['mode'] as String),
); }

/// Enables [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
final WorkersPlacementInfoNoStatusSmartMode mode;

Map<String, dynamic> toJson() { return {
  'mode': mode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mode'); } 
WorkersPlacementInfoNoStatusSmart copyWith({WorkersPlacementInfoNoStatusSmartMode? mode}) { return WorkersPlacementInfoNoStatusSmart(
  mode: mode ?? this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersPlacementInfoNoStatusSmart &&
          mode == other.mode; } 
@override int get hashCode { return mode.hashCode; } 
@override String toString() { return 'WorkersPlacementInfoNoStatusSmart(mode: $mode)'; } 
 }
