// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_development_mode_value.dart';/// Development Mode temporarily allows you to enter development mode for your websites if you need to make changes to your site. This will bypass Cloudflare's accelerated cache and slow down your site, but is useful if you are making changes to cacheable content (like images, css, or JavaScript) and would like to see those changes right away. Once entered, development mode will last for 3 hours and then automatically toggle off.
final class ZonesDevelopmentMode {const ZonesDevelopmentMode({this.editable = true, required this.id, this.modifiedOn, required this.value, this.timeRemaining, });

factory ZonesDevelopmentMode.fromJson(Map<String, dynamic> json) { return ZonesDevelopmentMode(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: ZonesDevelopmentModeValue.fromJson(json['value'] as String),
  timeRemaining: json['time_remaining'] != null ? (json['time_remaining'] as num).toDouble() : null,
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final DateTime? modifiedOn;

final ZonesDevelopmentModeValue value;

/// Value of the zone setting.
/// Notes: The interval (in seconds) from when development mode expires (positive integer) or last expired (negative integer) for the domain. If development mode has never been enabled, this value is false.
final double? timeRemaining;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': ?id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
  'time_remaining': ?timeRemaining,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesDevelopmentMode copyWith({bool Function()? editable, dynamic Function()? id, DateTime? Function()? modifiedOn, ZonesDevelopmentModeValue? value, double Function()? timeRemaining, }) { return ZonesDevelopmentMode(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
  timeRemaining: timeRemaining != null ? timeRemaining() : this.timeRemaining,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesDevelopmentMode &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value &&
          timeRemaining == other.timeRemaining; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value, timeRemaining); } 
@override String toString() { return 'ZonesDevelopmentMode(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value, timeRemaining: $timeRemaining)'; } 
 }
