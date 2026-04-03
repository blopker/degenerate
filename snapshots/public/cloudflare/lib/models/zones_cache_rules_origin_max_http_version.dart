// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_cache_rules_origin_max_http_version_value.dart';/// Value of the zone setting.
@immutable final class ZonesCacheRulesOriginMaxHttpVersionId {const ZonesCacheRulesOriginMaxHttpVersionId._(this.value);

factory ZonesCacheRulesOriginMaxHttpVersionId.fromJson(String json) { return switch (json) {
  'origin_max_http_version' => originMaxHttpVersion,
  _ => ZonesCacheRulesOriginMaxHttpVersionId._(json),
}; }

static const ZonesCacheRulesOriginMaxHttpVersionId originMaxHttpVersion = ZonesCacheRulesOriginMaxHttpVersionId._('origin_max_http_version');

static const List<ZonesCacheRulesOriginMaxHttpVersionId> values = [originMaxHttpVersion];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCacheRulesOriginMaxHttpVersionId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCacheRulesOriginMaxHttpVersionId($value)'; } 
 }
/// Origin Max HTTP Setting Version sets the highest HTTP version Cloudflare will attempt to use with your origin. This setting allows Cloudflare to make HTTP/2 requests to your origin. (Refer to [Enable HTTP/2 to Origin](https://developers.cloudflare.com/cache/how-to/enable-http2-to-origin/), for more information.). The default value is "2" for all plan types except Enterprise where it is "1".
@immutable final class ZonesCacheRulesOriginMaxHttpVersion {const ZonesCacheRulesOriginMaxHttpVersion({required this.id, this.modifiedOn, this.value, });

factory ZonesCacheRulesOriginMaxHttpVersion.fromJson(Map<String, dynamic> json) { return ZonesCacheRulesOriginMaxHttpVersion(
  id: ZonesCacheRulesOriginMaxHttpVersionId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: json['value'] != null ? ZonesCacheRulesOriginMaxHttpVersionValue.fromJson(json['value'] as String) : null,
); }

/// Value of the zone setting.
final ZonesCacheRulesOriginMaxHttpVersionId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

final ZonesCacheRulesOriginMaxHttpVersionValue? value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
ZonesCacheRulesOriginMaxHttpVersion copyWith({ZonesCacheRulesOriginMaxHttpVersionId? id, DateTime? Function()? modifiedOn, ZonesCacheRulesOriginMaxHttpVersionValue Function()? value, }) { return ZonesCacheRulesOriginMaxHttpVersion(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesCacheRulesOriginMaxHttpVersion &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'ZonesCacheRulesOriginMaxHttpVersion(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
