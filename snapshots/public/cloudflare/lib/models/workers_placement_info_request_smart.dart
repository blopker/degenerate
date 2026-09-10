// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Enables [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
@immutable final class WorkersPlacementInfoRequestSmartMode {const WorkersPlacementInfoRequestSmartMode._(this.value);

factory WorkersPlacementInfoRequestSmartMode.fromJson(String json) { return switch (json) {
  'smart' => smart,
  _ => WorkersPlacementInfoRequestSmartMode._(json),
}; }

static const WorkersPlacementInfoRequestSmartMode smart = WorkersPlacementInfoRequestSmartMode._('smart');

static const List<WorkersPlacementInfoRequestSmartMode> values = [smart];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersPlacementInfoRequestSmartMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersPlacementInfoRequestSmartMode($value)'; } 
 }
@immutable final class WorkersPlacementInfoRequestSmart {const WorkersPlacementInfoRequestSmart({required this.mode});

factory WorkersPlacementInfoRequestSmart.fromJson(Map<String, dynamic> json) { return WorkersPlacementInfoRequestSmart(
  mode: WorkersPlacementInfoRequestSmartMode.fromJson(json['mode'] as String),
); }

/// Enables [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
final WorkersPlacementInfoRequestSmartMode mode;

Map<String, dynamic> toJson() { return {
  'mode': mode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mode'); } 
WorkersPlacementInfoRequestSmart copyWith({WorkersPlacementInfoRequestSmartMode? mode}) { return WorkersPlacementInfoRequestSmart(
  mode: mode ?? this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersPlacementInfoRequestSmart &&
          mode == other.mode; } 
@override int get hashCode { return mode.hashCode; } 
@override String toString() { return 'WorkersPlacementInfoRequestSmart(mode: $mode)'; } 
 }
