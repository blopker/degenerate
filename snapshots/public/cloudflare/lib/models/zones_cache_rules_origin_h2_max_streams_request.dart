// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_cache_rules_origin_h2_max_streams_value.dart';/// Value of the zone setting.
@immutable final class ZonesCacheRulesOriginH2MaxStreamsRequestId {const ZonesCacheRulesOriginH2MaxStreamsRequestId._(this.value);

factory ZonesCacheRulesOriginH2MaxStreamsRequestId.fromJson(String json) { return switch (json) {
  'origin_h2_max_streams' => originH2MaxStreams,
  _ => ZonesCacheRulesOriginH2MaxStreamsRequestId._(json),
}; }

static const ZonesCacheRulesOriginH2MaxStreamsRequestId originH2MaxStreams = ZonesCacheRulesOriginH2MaxStreamsRequestId._('origin_h2_max_streams');

static const List<ZonesCacheRulesOriginH2MaxStreamsRequestId> values = [originH2MaxStreams];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCacheRulesOriginH2MaxStreamsRequestId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCacheRulesOriginH2MaxStreamsRequestId($value)'; } 
 }
/// Origin H2 Max Streams configures the max number of concurrent requests that Cloudflare will send within the same connection when communicating with the origin server, if the origin supports it. Note that if your origin does not support H2 multiplexing, 5xx errors may be observed, particularly 520s. Also note that the default value is `100` for all plan types except Enterprise where it is `1`. `1` means that H2 multiplexing is disabled.
@immutable final class ZonesCacheRulesOriginH2MaxStreamsRequest {const ZonesCacheRulesOriginH2MaxStreamsRequest({required this.id, this.value, });

factory ZonesCacheRulesOriginH2MaxStreamsRequest.fromJson(Map<String, dynamic> json) { return ZonesCacheRulesOriginH2MaxStreamsRequest(
  id: ZonesCacheRulesOriginH2MaxStreamsRequestId.fromJson(json['id'] as String),
  value: json['value'] != null ? ZonesCacheRulesOriginH2MaxStreamsValue.fromJson(json['value'] as num) : null,
); }

/// Value of the zone setting.
final ZonesCacheRulesOriginH2MaxStreamsRequestId id;

/// Value of the Origin H2 Max Streams Setting.
final ZonesCacheRulesOriginH2MaxStreamsValue? value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
ZonesCacheRulesOriginH2MaxStreamsRequest copyWith({ZonesCacheRulesOriginH2MaxStreamsRequestId? id, ZonesCacheRulesOriginH2MaxStreamsValue? Function()? value, }) { return ZonesCacheRulesOriginH2MaxStreamsRequest(
  id: id ?? this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesCacheRulesOriginH2MaxStreamsRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesCacheRulesOriginH2MaxStreamsRequest(id: $id, value: $value)'; } 
 }
