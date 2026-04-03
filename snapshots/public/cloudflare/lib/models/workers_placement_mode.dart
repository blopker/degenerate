// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Configuration for [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement). Specify mode='smart' for Smart Placement, or one of region/hostname/host.
@immutable final class WorkersPlacementMode {const WorkersPlacementMode._(this.value);

factory WorkersPlacementMode.fromJson(String json) { return switch (json) {
  'smart' => smart,
  'targeted' => targeted,
  _ => WorkersPlacementMode._(json),
}; }

static const WorkersPlacementMode smart = WorkersPlacementMode._('smart');

static const WorkersPlacementMode targeted = WorkersPlacementMode._('targeted');

static const List<WorkersPlacementMode> values = [smart, targeted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersPlacementMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersPlacementMode($value)'; } 
 }
