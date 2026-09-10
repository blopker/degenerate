// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// An allowlist of ciphers for TLS termination. These ciphers must be in the BoringSSL format.
@immutable final class ZonesCiphers {const ZonesCiphers({required this.id, required this.value, this.editable = true, this.modifiedOn = const Omittable.absent(), });

factory ZonesCiphers.fromJson(Map<String, dynamic> json) { return ZonesCiphers(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
  value: (json['value'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

final List<String> value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': id,
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesCiphers copyWith({bool Function()? editable, dynamic Function()? id, Omittable<DateTime?>? modifiedOn, List<String>? value, }) { return ZonesCiphers(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesCiphers &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          listEquals(value, other.value); } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, Object.hashAll(value)); } 
@override String toString() { return 'ZonesCiphers(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
