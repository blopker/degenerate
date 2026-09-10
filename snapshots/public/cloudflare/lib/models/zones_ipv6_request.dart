// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_ipv6_value.dart';/// Enable IPv6 on all subdomains that are Cloudflare enabled.  (https://support.cloudflare.com/hc/en-us/articles/200168586).
@immutable final class ZonesIpv6Request {const ZonesIpv6Request({required this.id, required this.value, });

factory ZonesIpv6Request.fromJson(Map<String, dynamic> json) { return ZonesIpv6Request(
  id: json['id'],
  value: ZonesIpv6Value.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesIpv6Value value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesIpv6Request copyWith({dynamic Function()? id, ZonesIpv6Value? value, }) { return ZonesIpv6Request(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesIpv6Request &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesIpv6Request(id: $id, value: $value)'; } 
 }
