// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_cache_rules_origin_h2_max_streams_value.dart';/// Value of the zone setting.
final class ZonesCacheRulesOriginH2MaxStreamsId {const ZonesCacheRulesOriginH2MaxStreamsId._(this.value);

factory ZonesCacheRulesOriginH2MaxStreamsId.fromJson(String json) { return switch (json) {
  'origin_h2_max_streams' => originH2MaxStreams,
  _ => ZonesCacheRulesOriginH2MaxStreamsId._(json),
}; }

static const ZonesCacheRulesOriginH2MaxStreamsId originH2MaxStreams = ZonesCacheRulesOriginH2MaxStreamsId._('origin_h2_max_streams');

static const List<ZonesCacheRulesOriginH2MaxStreamsId> values = [originH2MaxStreams];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCacheRulesOriginH2MaxStreamsId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCacheRulesOriginH2MaxStreamsId($value)'; } 
 }
/// Origin H2 Max Streams configures the max number of concurrent requests that Cloudflare will send within the same connection when communicating with the origin server, if the origin supports it. Note that if your origin does not support H2 multiplexing, 5xx errors may be observed, particularly 520s. Also note that the default value is `100` for all plan types except Enterprise where it is `1`. `1` means that H2 multiplexing is disabled.
final class ZonesCacheRulesOriginH2MaxStreams {const ZonesCacheRulesOriginH2MaxStreams({required this.id, this.modifiedOn, this.value, });

factory ZonesCacheRulesOriginH2MaxStreams.fromJson(Map<String, dynamic> json) { return ZonesCacheRulesOriginH2MaxStreams(
  id: ZonesCacheRulesOriginH2MaxStreamsId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: json['value'] != null ? ZonesCacheRulesOriginH2MaxStreamsValue.fromJson(json['value'] as num) : null,
); }

/// Value of the zone setting.
final ZonesCacheRulesOriginH2MaxStreamsId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

final ZonesCacheRulesOriginH2MaxStreamsValue? value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
ZonesCacheRulesOriginH2MaxStreams copyWith({ZonesCacheRulesOriginH2MaxStreamsId? id, DateTime? Function()? modifiedOn, ZonesCacheRulesOriginH2MaxStreamsValue Function()? value, }) { return ZonesCacheRulesOriginH2MaxStreams(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesCacheRulesOriginH2MaxStreams &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'ZonesCacheRulesOriginH2MaxStreams(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
