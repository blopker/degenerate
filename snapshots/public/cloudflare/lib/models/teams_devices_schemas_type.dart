// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of device posture integration.
@immutable final class TeamsDevicesSchemasType {const TeamsDevicesSchemasType._(this.value);

factory TeamsDevicesSchemasType.fromJson(String json) { return switch (json) {
  'workspace_one' => workspaceOne,
  'crowdstrike_s2s' => crowdstrikeS2s,
  'uptycs' => uptycs,
  'intune' => intune,
  'kolide' => kolide,
  'tanium_s2s' => taniumS2s,
  'sentinelone_s2s' => sentineloneS2s,
  'custom_s2s' => customS2s,
  _ => TeamsDevicesSchemasType._(json),
}; }

static const TeamsDevicesSchemasType workspaceOne = TeamsDevicesSchemasType._('workspace_one');

static const TeamsDevicesSchemasType crowdstrikeS2s = TeamsDevicesSchemasType._('crowdstrike_s2s');

static const TeamsDevicesSchemasType uptycs = TeamsDevicesSchemasType._('uptycs');

static const TeamsDevicesSchemasType intune = TeamsDevicesSchemasType._('intune');

static const TeamsDevicesSchemasType kolide = TeamsDevicesSchemasType._('kolide');

static const TeamsDevicesSchemasType taniumS2s = TeamsDevicesSchemasType._('tanium_s2s');

static const TeamsDevicesSchemasType sentineloneS2s = TeamsDevicesSchemasType._('sentinelone_s2s');

static const TeamsDevicesSchemasType customS2s = TeamsDevicesSchemasType._('custom_s2s');

static const List<TeamsDevicesSchemasType> values = [workspaceOne, crowdstrikeS2s, uptycs, intune, kolide, taniumS2s, sentineloneS2s, customS2s];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsDevicesSchemasType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TeamsDevicesSchemasType($value)'; } 
 }
