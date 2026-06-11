// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPresetsResponseDataPermissionsPluginsConfigVariant2AccessControl {const PostPresetsResponseDataPermissionsPluginsConfigVariant2AccessControl._(this.value);

factory PostPresetsResponseDataPermissionsPluginsConfigVariant2AccessControl.fromJson(String json) { return switch (json) {
  'FULL_ACCESS' => fullAccess,
  'VIEW_ONLY' => viewOnly,
  _ => PostPresetsResponseDataPermissionsPluginsConfigVariant2AccessControl._(json),
}; }

static const PostPresetsResponseDataPermissionsPluginsConfigVariant2AccessControl fullAccess = PostPresetsResponseDataPermissionsPluginsConfigVariant2AccessControl._('FULL_ACCESS');

static const PostPresetsResponseDataPermissionsPluginsConfigVariant2AccessControl viewOnly = PostPresetsResponseDataPermissionsPluginsConfigVariant2AccessControl._('VIEW_ONLY');

static const List<PostPresetsResponseDataPermissionsPluginsConfigVariant2AccessControl> values = [fullAccess, viewOnly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPresetsResponseDataPermissionsPluginsConfigVariant2AccessControl && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPresetsResponseDataPermissionsPluginsConfigVariant2AccessControl($value)'; } 
 }
@immutable final class PostPresetsResponseDataPermissionsPluginsConfigVariant2 {const PostPresetsResponseDataPermissionsPluginsConfigVariant2({required this.accessControl, required this.handlesViewOnly, });

factory PostPresetsResponseDataPermissionsPluginsConfigVariant2.fromJson(Map<String, dynamic> json) { return PostPresetsResponseDataPermissionsPluginsConfigVariant2(
  accessControl: PostPresetsResponseDataPermissionsPluginsConfigVariant2AccessControl.fromJson(json['access_control'] as String),
  handlesViewOnly: json['handles_view_only'] as bool,
); }

final PostPresetsResponseDataPermissionsPluginsConfigVariant2AccessControl accessControl;

final bool handlesViewOnly;

Map<String, dynamic> toJson() { return {
  'access_control': accessControl.toJson(),
  'handles_view_only': handlesViewOnly,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('access_control') &&
      json.containsKey('handles_view_only') && json['handles_view_only'] is bool; } 
PostPresetsResponseDataPermissionsPluginsConfigVariant2 copyWith({PostPresetsResponseDataPermissionsPluginsConfigVariant2AccessControl? accessControl, bool? handlesViewOnly, }) { return PostPresetsResponseDataPermissionsPluginsConfigVariant2(
  accessControl: accessControl ?? this.accessControl,
  handlesViewOnly: handlesViewOnly ?? this.handlesViewOnly,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPresetsResponseDataPermissionsPluginsConfigVariant2 &&
          accessControl == other.accessControl &&
          handlesViewOnly == other.handlesViewOnly; } 
@override int get hashCode { return Object.hash(accessControl, handlesViewOnly); } 
@override String toString() { return 'PostPresetsResponseDataPermissionsPluginsConfigVariant2(accessControl: $accessControl, handlesViewOnly: $handlesViewOnly)'; } 
 }
