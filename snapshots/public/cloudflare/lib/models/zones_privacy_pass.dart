// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_privacy_pass_value.dart';/// Privacy Pass v1 was a browser extension developed by the Privacy Pass Team to improve the browsing experience for your visitors by allowing users to reduce the number of CAPTCHAs shown. (https://support.cloudflare.com/hc/en-us/articles/115001992652-Privacy-Pass).
@immutable final class ZonesPrivacyPass {const ZonesPrivacyPass({required this.id, required this.value, this.editable = true, this.modifiedOn, });

factory ZonesPrivacyPass.fromJson(Map<String, dynamic> json) { return ZonesPrivacyPass(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: ZonesPrivacyPassValue.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final DateTime? modifiedOn;

final ZonesPrivacyPassValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': ?id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesPrivacyPass copyWith({bool Function()? editable, dynamic Function()? id, DateTime? Function()? modifiedOn, ZonesPrivacyPassValue? value, }) { return ZonesPrivacyPass(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesPrivacyPass &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesPrivacyPass(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
