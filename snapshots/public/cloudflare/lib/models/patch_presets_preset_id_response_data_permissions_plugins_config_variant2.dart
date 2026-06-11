// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl {const PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl._(this.value);

factory PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl.fromJson(String json) { return switch (json) {
  'FULL_ACCESS' => fullAccess,
  'VIEW_ONLY' => viewOnly,
  _ => PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl._(json),
}; }

static const PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl fullAccess = PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl._('FULL_ACCESS');

static const PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl viewOnly = PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl._('VIEW_ONLY');

static const List<PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl> values = [fullAccess, viewOnly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl($value)'; } 
 }
@immutable final class PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2 {const PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2({required this.accessControl, required this.handlesViewOnly, });

factory PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2.fromJson(Map<String, dynamic> json) { return PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2(
  accessControl: PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl.fromJson(json['access_control'] as String),
  handlesViewOnly: json['handles_view_only'] as bool,
); }

final PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl accessControl;

final bool handlesViewOnly;

Map<String, dynamic> toJson() { return {
  'access_control': accessControl.toJson(),
  'handles_view_only': handlesViewOnly,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('access_control') &&
      json.containsKey('handles_view_only') && json['handles_view_only'] is bool; } 
PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2 copyWith({PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl? accessControl, bool? handlesViewOnly, }) { return PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2(
  accessControl: accessControl ?? this.accessControl,
  handlesViewOnly: handlesViewOnly ?? this.handlesViewOnly,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2 &&
          accessControl == other.accessControl &&
          handlesViewOnly == other.handlesViewOnly; } 
@override int get hashCode { return Object.hash(accessControl, handlesViewOnly); } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataPermissionsPluginsConfigVariant2(accessControl: $accessControl, handlesViewOnly: $handlesViewOnly)'; } 
 }
