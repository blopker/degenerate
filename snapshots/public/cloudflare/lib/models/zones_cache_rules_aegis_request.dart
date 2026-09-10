// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_cache_rules_aegis_value.dart';/// ID of the zone setting.
@immutable final class ZonesCacheRulesAegisRequestId {const ZonesCacheRulesAegisRequestId._(this.value);

factory ZonesCacheRulesAegisRequestId.fromJson(String json) { return switch (json) {
  'aegis' => aegis,
  _ => ZonesCacheRulesAegisRequestId._(json),
}; }

static const ZonesCacheRulesAegisRequestId aegis = ZonesCacheRulesAegisRequestId._('aegis');

static const List<ZonesCacheRulesAegisRequestId> values = [aegis];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCacheRulesAegisRequestId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCacheRulesAegisRequestId($value)'; } 
 }
/// Aegis provides dedicated egress IPs (from Cloudflare to your origin) for your layer 7 WAF and CDN services. The egress IPs are reserved exclusively for your account so that you can increase your origin security by only allowing traffic from a small list of IP addresses.
@immutable final class ZonesCacheRulesAegisRequest {const ZonesCacheRulesAegisRequest({required this.id, this.value, });

factory ZonesCacheRulesAegisRequest.fromJson(Map<String, dynamic> json) { return ZonesCacheRulesAegisRequest(
  id: ZonesCacheRulesAegisRequestId.fromJson(json['id'] as String),
  value: json['value'] != null ? ZonesCacheRulesAegisValue.fromJson(json['value'] as Map<String, dynamic>) : null,
); }

/// ID of the zone setting.
final ZonesCacheRulesAegisRequestId id;

final ZonesCacheRulesAegisValue? value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
ZonesCacheRulesAegisRequest copyWith({ZonesCacheRulesAegisRequestId? id, ZonesCacheRulesAegisValue? Function()? value, }) { return ZonesCacheRulesAegisRequest(
  id: id ?? this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesCacheRulesAegisRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesCacheRulesAegisRequest(id: $id, value: $value)'; } 
 }
