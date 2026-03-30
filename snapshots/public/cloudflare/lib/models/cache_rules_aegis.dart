// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_aegis_value.dart';/// ID of the zone setting.
final class CacheRulesAegisId {const CacheRulesAegisId._(this.value);

factory CacheRulesAegisId.fromJson(String json) { return switch (json) {
  'aegis' => aegis,
  _ => CacheRulesAegisId._(json),
}; }

static const CacheRulesAegisId aegis = CacheRulesAegisId._('aegis');

static const List<CacheRulesAegisId> values = [aegis];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesAegisId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesAegisId($value)'; } 
 }
/// Aegis provides dedicated egress IPs (from Cloudflare to your origin) for your layer 7 WAF and CDN services. The egress IPs are reserved exclusively for your account so that you can increase your origin security by only allowing traffic from a small list of IP addresses.
final class CacheRulesAegis {const CacheRulesAegis({required this.id, this.modifiedOn, this.value, });

factory CacheRulesAegis.fromJson(Map<String, dynamic> json) { return CacheRulesAegis(
  id: CacheRulesAegisId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: json['value'] != null ? CacheRulesAegisValue.fromJson(json['value'] as Map<String, dynamic>) : null,
); }

/// ID of the zone setting.
final CacheRulesAegisId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

final CacheRulesAegisValue? value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
CacheRulesAegis copyWith({CacheRulesAegisId? id, DateTime? Function()? modifiedOn, CacheRulesAegisValue Function()? value, }) { return CacheRulesAegis(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesAegis &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'CacheRulesAegis(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
