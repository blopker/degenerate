// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_origin_max_http_version_value.dart';/// Value of the zone setting.
@immutable final class CacheRulesOriginMaxHttpVersionId {const CacheRulesOriginMaxHttpVersionId._(this.value);

factory CacheRulesOriginMaxHttpVersionId.fromJson(String json) { return switch (json) {
  'origin_max_http_version' => originMaxHttpVersion,
  _ => CacheRulesOriginMaxHttpVersionId._(json),
}; }

static const CacheRulesOriginMaxHttpVersionId originMaxHttpVersion = CacheRulesOriginMaxHttpVersionId._('origin_max_http_version');

static const List<CacheRulesOriginMaxHttpVersionId> values = [originMaxHttpVersion];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesOriginMaxHttpVersionId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesOriginMaxHttpVersionId($value)'; } 
 }
/// Origin Max HTTP Setting Version sets the highest HTTP version Cloudflare will attempt to use with your origin. This setting allows Cloudflare to make HTTP/2 requests to your origin. (Refer to [Enable HTTP/2 to Origin](https://developers.cloudflare.com/cache/how-to/enable-http2-to-origin/), for more information.). The default value is "2" for all plan types except Enterprise where it is "1".
@immutable final class CacheRulesOriginMaxHttpVersion {const CacheRulesOriginMaxHttpVersion({required this.id, this.modifiedOn, this.value, });

factory CacheRulesOriginMaxHttpVersion.fromJson(Map<String, dynamic> json) { return CacheRulesOriginMaxHttpVersion(
  id: CacheRulesOriginMaxHttpVersionId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: json['value'] != null ? CacheRulesOriginMaxHttpVersionValue.fromJson(json['value'] as String) : null,
); }

/// Value of the zone setting.
final CacheRulesOriginMaxHttpVersionId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

final CacheRulesOriginMaxHttpVersionValue? value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
CacheRulesOriginMaxHttpVersion copyWith({CacheRulesOriginMaxHttpVersionId? id, DateTime? Function()? modifiedOn, CacheRulesOriginMaxHttpVersionValue Function()? value, }) { return CacheRulesOriginMaxHttpVersion(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesOriginMaxHttpVersion &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'CacheRulesOriginMaxHttpVersion(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
