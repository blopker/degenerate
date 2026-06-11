// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SpeedCloudflareSpeedBrainResponse {const SpeedCloudflareSpeedBrainResponse({this.editable = true, this.id, this.modifiedOn, this.value, });

factory SpeedCloudflareSpeedBrainResponse.fromJson(Map<String, dynamic> json) { return SpeedCloudflareSpeedBrainResponse(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'] as String?,
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: json['value'] as String?,
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// Identifier of the zone setting.
final String? id;

/// last time this setting was modified.
final DateTime? modifiedOn;

/// Whether the feature is enabled or disabled.
/// Defaults to "on" for Free plans, otherwise defaults to "off".
/// 
final String? value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': ?id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'editable', 'id', 'modified_on', 'value'}.contains(key)); } 
SpeedCloudflareSpeedBrainResponse copyWith({bool Function()? editable, String Function()? id, DateTime? Function()? modifiedOn, String Function()? value, }) { return SpeedCloudflareSpeedBrainResponse(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpeedCloudflareSpeedBrainResponse &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'SpeedCloudflareSpeedBrainResponse(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
