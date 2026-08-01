// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_redirects_for_ai_training_value.dart';/// When enabled, Cloudflare will redirect verified AI training crawlers to canonical URLs
/// found in the HTML response, ensuring AI models train on authoritative content.
@immutable final class ZonesRedirectsForAiTraining {const ZonesRedirectsForAiTraining({required this.id, required this.value, this.editable = true, this.modifiedOn = const Omittable.absent(), });

factory ZonesRedirectsForAiTraining.fromJson(Map<String, dynamic> json) { return ZonesRedirectsForAiTraining(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
  value: ZonesRedirectsForAiTrainingValue.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

final ZonesRedirectsForAiTrainingValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': id,
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesRedirectsForAiTraining copyWith({bool Function()? editable, dynamic Function()? id, Omittable<DateTime?>? modifiedOn, ZonesRedirectsForAiTrainingValue? value, }) { return ZonesRedirectsForAiTraining(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesRedirectsForAiTraining &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesRedirectsForAiTraining(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
