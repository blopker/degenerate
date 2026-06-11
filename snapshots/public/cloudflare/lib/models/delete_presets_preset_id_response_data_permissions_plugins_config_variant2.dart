// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl {const DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl._(this.value);

factory DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl.fromJson(String json) { return switch (json) {
  'FULL_ACCESS' => fullAccess,
  'VIEW_ONLY' => viewOnly,
  _ => DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl._(json),
}; }

static const DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl fullAccess = DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl._('FULL_ACCESS');

static const DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl viewOnly = DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl._('VIEW_ONLY');

static const List<DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl> values = [fullAccess, viewOnly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl($value)'; } 
 }
@immutable final class DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2 {const DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2({required this.accessControl, required this.handlesViewOnly, });

factory DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2(
  accessControl: DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl.fromJson(json['access_control'] as String),
  handlesViewOnly: json['handles_view_only'] as bool,
); }

final DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl accessControl;

final bool handlesViewOnly;

Map<String, dynamic> toJson() { return {
  'access_control': accessControl.toJson(),
  'handles_view_only': handlesViewOnly,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('access_control') &&
      json.containsKey('handles_view_only') && json['handles_view_only'] is bool; } 
DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2 copyWith({DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2AccessControl? accessControl, bool? handlesViewOnly, }) { return DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2(
  accessControl: accessControl ?? this.accessControl,
  handlesViewOnly: handlesViewOnly ?? this.handlesViewOnly,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2 &&
          accessControl == other.accessControl &&
          handlesViewOnly == other.handlesViewOnly; } 
@override int get hashCode { return Object.hash(accessControl, handlesViewOnly); } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2(accessControl: $accessControl, handlesViewOnly: $handlesViewOnly)'; } 
 }
