// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_pseudo_ipv4_value.dart';/// The value set for the Pseudo IPv4 setting.
@immutable final class ZonesPseudoIpv4Request {const ZonesPseudoIpv4Request({required this.id, required this.value, });

factory ZonesPseudoIpv4Request.fromJson(Map<String, dynamic> json) { return ZonesPseudoIpv4Request(
  id: json['id'],
  value: ZonesPseudoIpv4Value.fromJson(json['value'] as String),
); }

/// Value of the Pseudo IPv4 setting.
final dynamic id;

/// Value of the Pseudo IPv4 setting.
final ZonesPseudoIpv4Value value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesPseudoIpv4Request copyWith({dynamic Function()? id, ZonesPseudoIpv4Value? value, }) { return ZonesPseudoIpv4Request(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesPseudoIpv4Request &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesPseudoIpv4Request(id: $id, value: $value)'; } 
 }
