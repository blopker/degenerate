// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_cache_rules_origin_max_http_version_value.dart';/// Value of the zone setting.
@immutable final class ZonesCacheRulesOriginMaxHttpVersionRequestId {const ZonesCacheRulesOriginMaxHttpVersionRequestId._(this.value);

factory ZonesCacheRulesOriginMaxHttpVersionRequestId.fromJson(String json) {return switch (json) {
  'origin_max_http_version' => originMaxHttpVersion,
  _ => ZonesCacheRulesOriginMaxHttpVersionRequestId._(json),
};}

static const ZonesCacheRulesOriginMaxHttpVersionRequestId originMaxHttpVersion = ZonesCacheRulesOriginMaxHttpVersionRequestId._('origin_max_http_version');

static const List<ZonesCacheRulesOriginMaxHttpVersionRequestId> values = [originMaxHttpVersion];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is ZonesCacheRulesOriginMaxHttpVersionRequestId && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'ZonesCacheRulesOriginMaxHttpVersionRequestId($value)';}
}
/// Origin Max HTTP Setting Version sets the highest HTTP version Cloudflare will attempt to use with your origin. This setting allows Cloudflare to make HTTP/2 requests to your origin. (Refer to [Enable HTTP/2 to Origin](https://developers.cloudflare.com/cache/how-to/enable-http2-to-origin/), for more information.). The default value is "2" for all plan types except Enterprise where it is "1".
@immutable final class ZonesCacheRulesOriginMaxHttpVersionRequest {const ZonesCacheRulesOriginMaxHttpVersionRequest({required this.id, this.value, });

factory ZonesCacheRulesOriginMaxHttpVersionRequest.fromJson(Map<String, dynamic> json) {return ZonesCacheRulesOriginMaxHttpVersionRequest(
  id: ZonesCacheRulesOriginMaxHttpVersionRequestId.fromJson(json['id'] as String),
  value: json['value'] != null ? ZonesCacheRulesOriginMaxHttpVersionValue.fromJson(json['value'] as String) : null,
);}

/// Value of the zone setting.
final ZonesCacheRulesOriginMaxHttpVersionRequestId id;

/// Value of the Origin Max HTTP Version Setting.
final ZonesCacheRulesOriginMaxHttpVersionValue? value;

Map<String, dynamic> toJson() {return {
  'id': id.toJson(),
  if (value != null) 'value': value?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id');}
ZonesCacheRulesOriginMaxHttpVersionRequest copyWith({ZonesCacheRulesOriginMaxHttpVersionRequestId? id, ZonesCacheRulesOriginMaxHttpVersionValue? Function()? value, }) {return ZonesCacheRulesOriginMaxHttpVersionRequest(
  id: id ?? this.id,
  value: value != null ? value() : this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesCacheRulesOriginMaxHttpVersionRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesCacheRulesOriginMaxHttpVersionRequest(id: $id, value: $value)';}
}
