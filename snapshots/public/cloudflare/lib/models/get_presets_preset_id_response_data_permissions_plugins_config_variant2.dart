// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl {const GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl._(this.value);

factory GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl.fromJson(String json) { return switch (json) {
  'FULL_ACCESS' => fullAccess,
  'VIEW_ONLY' => viewOnly,
  _ => GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl._(json),
}; }

static const GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl fullAccess = GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl._('FULL_ACCESS');

static const GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl viewOnly = GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl._('VIEW_ONLY');

static const List<GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl> values = [fullAccess, viewOnly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl($value)'; } 
 }
@immutable final class GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2 {const GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2({required this.accessControl, required this.handlesViewOnly, });

factory GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2(
  accessControl: GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl.fromJson(json['access_control'] as String),
  handlesViewOnly: json['handles_view_only'] as bool,
); }

final GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl accessControl;

final bool handlesViewOnly;

Map<String, dynamic> toJson() { return {
  'access_control': accessControl.toJson(),
  'handles_view_only': handlesViewOnly,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('access_control') &&
      json.containsKey('handles_view_only') && json['handles_view_only'] is bool; } 
GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2 copyWith({GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl? accessControl, bool? handlesViewOnly, }) { return GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2(
  accessControl: accessControl ?? this.accessControl,
  handlesViewOnly: handlesViewOnly ?? this.handlesViewOnly,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2 &&
          accessControl == other.accessControl &&
          handlesViewOnly == other.handlesViewOnly; } 
@override int get hashCode { return Object.hash(accessControl, handlesViewOnly); } 
@override String toString() { return 'GetPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2(accessControl: $accessControl, handlesViewOnly: $handlesViewOnly)'; } 
 }
