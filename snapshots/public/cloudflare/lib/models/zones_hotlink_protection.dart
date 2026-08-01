// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_hotlink_protection_value.dart';/// When enabled, the Hotlink Protection option ensures that other sites cannot suck up your bandwidth by building pages that use images hosted on your site. Anytime a request for an image on your site hits Cloudflare, we check to ensure that it's not another site requesting them. People will still be able to download and view images from your page, but other sites won't be able to steal them for use on their own pages. (https://support.cloudflare.com/hc/en-us/articles/200170026).
@immutable final class ZonesHotlinkProtection {const ZonesHotlinkProtection({required this.id, required this.value, this.editable = true, this.modifiedOn = const Omittable.absent(), });

factory ZonesHotlinkProtection.fromJson(Map<String, dynamic> json) { return ZonesHotlinkProtection(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
  value: ZonesHotlinkProtectionValue.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

final ZonesHotlinkProtectionValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': id,
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesHotlinkProtection copyWith({bool Function()? editable, dynamic Function()? id, Omittable<DateTime?>? modifiedOn, ZonesHotlinkProtectionValue? value, }) { return ZonesHotlinkProtection(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesHotlinkProtection &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesHotlinkProtection(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
