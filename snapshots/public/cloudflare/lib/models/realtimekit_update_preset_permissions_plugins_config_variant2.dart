// GENERATED CODE - DO NOT MODIFY BY HAND

final class RealtimekitUpdatePresetPermissionsPluginsConfigVariant2AccessControl {const RealtimekitUpdatePresetPermissionsPluginsConfigVariant2AccessControl._(this.value);

factory RealtimekitUpdatePresetPermissionsPluginsConfigVariant2AccessControl.fromJson(String json) { return switch (json) {
  'FULL_ACCESS' => fullAccess,
  'VIEW_ONLY' => viewOnly,
  _ => RealtimekitUpdatePresetPermissionsPluginsConfigVariant2AccessControl._(json),
}; }

static const RealtimekitUpdatePresetPermissionsPluginsConfigVariant2AccessControl fullAccess = RealtimekitUpdatePresetPermissionsPluginsConfigVariant2AccessControl._('FULL_ACCESS');

static const RealtimekitUpdatePresetPermissionsPluginsConfigVariant2AccessControl viewOnly = RealtimekitUpdatePresetPermissionsPluginsConfigVariant2AccessControl._('VIEW_ONLY');

static const List<RealtimekitUpdatePresetPermissionsPluginsConfigVariant2AccessControl> values = [fullAccess, viewOnly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitUpdatePresetPermissionsPluginsConfigVariant2AccessControl && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitUpdatePresetPermissionsPluginsConfigVariant2AccessControl($value)'; } 
 }
final class RealtimekitUpdatePresetPermissionsPluginsConfigVariant2 {const RealtimekitUpdatePresetPermissionsPluginsConfigVariant2({this.accessControl, this.handlesViewOnly, });

factory RealtimekitUpdatePresetPermissionsPluginsConfigVariant2.fromJson(Map<String, dynamic> json) { return RealtimekitUpdatePresetPermissionsPluginsConfigVariant2(
  accessControl: json['access_control'] != null ? RealtimekitUpdatePresetPermissionsPluginsConfigVariant2AccessControl.fromJson(json['access_control'] as String) : null,
  handlesViewOnly: json['handles_view_only'] as bool?,
); }

final RealtimekitUpdatePresetPermissionsPluginsConfigVariant2AccessControl? accessControl;

final bool? handlesViewOnly;

Map<String, dynamic> toJson() { return {
  if (accessControl != null) 'access_control': accessControl?.toJson(),
  'handles_view_only': ?handlesViewOnly,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'access_control', 'handles_view_only'}.contains(key)); } 
RealtimekitUpdatePresetPermissionsPluginsConfigVariant2 copyWith({RealtimekitUpdatePresetPermissionsPluginsConfigVariant2AccessControl Function()? accessControl, bool Function()? handlesViewOnly, }) { return RealtimekitUpdatePresetPermissionsPluginsConfigVariant2(
  accessControl: accessControl != null ? accessControl() : this.accessControl,
  handlesViewOnly: handlesViewOnly != null ? handlesViewOnly() : this.handlesViewOnly,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitUpdatePresetPermissionsPluginsConfigVariant2 &&
          accessControl == other.accessControl &&
          handlesViewOnly == other.handlesViewOnly; } 
@override int get hashCode { return Object.hash(accessControl, handlesViewOnly); } 
@override String toString() { return 'RealtimekitUpdatePresetPermissionsPluginsConfigVariant2(accessControl: $accessControl, handlesViewOnly: $handlesViewOnly)'; } 
 }
