// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_cache_rules_aegis_value.dart';/// ID of the zone setting.
@immutable final class ZonesCacheRulesAegisId {const ZonesCacheRulesAegisId._(this.value);

factory ZonesCacheRulesAegisId.fromJson(String json) { return switch (json) {
  'aegis' => aegis,
  _ => ZonesCacheRulesAegisId._(json),
}; }

static const ZonesCacheRulesAegisId aegis = ZonesCacheRulesAegisId._('aegis');

static const List<ZonesCacheRulesAegisId> values = [aegis];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCacheRulesAegisId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCacheRulesAegisId($value)'; } 
 }
/// Aegis provides dedicated egress IPs (from Cloudflare to your origin) for your layer 7 WAF and CDN services. The egress IPs are reserved exclusively for your account so that you can increase your origin security by only allowing traffic from a small list of IP addresses.
@immutable final class ZonesCacheRulesAegis {const ZonesCacheRulesAegis({required this.id, this.modifiedOn, this.value, });

factory ZonesCacheRulesAegis.fromJson(Map<String, dynamic> json) { return ZonesCacheRulesAegis(
  id: ZonesCacheRulesAegisId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: json['value'] != null ? ZonesCacheRulesAegisValue.fromJson(json['value'] as Map<String, dynamic>) : null,
); }

/// ID of the zone setting.
final ZonesCacheRulesAegisId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

final ZonesCacheRulesAegisValue? value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
ZonesCacheRulesAegis copyWith({ZonesCacheRulesAegisId? id, DateTime? Function()? modifiedOn, ZonesCacheRulesAegisValue Function()? value, }) { return ZonesCacheRulesAegis(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesCacheRulesAegis &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'ZonesCacheRulesAegis(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
