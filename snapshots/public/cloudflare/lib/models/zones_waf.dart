// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Turn on or off [WAF managed rules (previous version, deprecated)](https://developers.cloudflare.com/waf/reference/legacy/old-waf-managed-rules/).
/// You cannot enable or disable individual WAF managed rules via Page Rules.
/// 
@immutable final class ZonesWafId {const ZonesWafId._(this.value);

factory ZonesWafId.fromJson(String json) { return switch (json) {
  'waf' => waf,
  _ => ZonesWafId._(json),
}; }

static const ZonesWafId waf = ZonesWafId._('waf');

static const List<ZonesWafId> values = [waf];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesWafId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesWafId($value)'; } 
 }
/// The status of WAF managed rules (previous version).
/// 
@immutable final class ZonesWafValue2 {const ZonesWafValue2._(this.value);

factory ZonesWafValue2.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesWafValue2._(json),
}; }

static const ZonesWafValue2 $on = ZonesWafValue2._('on');

static const ZonesWafValue2 off = ZonesWafValue2._('off');

static const List<ZonesWafValue2> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesWafValue2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesWafValue2($value)'; } 
 }
@immutable final class ZonesWaf {const ZonesWaf({this.id, this.value, });

factory ZonesWaf.fromJson(Map<String, dynamic> json) { return ZonesWaf(
  id: json['id'] != null ? ZonesWafId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesWafValue2.fromJson(json['value'] as String) : null,
); }

/// Turn on or off [WAF managed rules (previous version, deprecated)](https://developers.cloudflare.com/waf/reference/legacy/old-waf-managed-rules/).
/// You cannot enable or disable individual WAF managed rules via Page Rules.
/// 
final ZonesWafId? id;

/// The status of WAF managed rules (previous version).
/// 
final ZonesWafValue2? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesWaf copyWith({ZonesWafId Function()? id, ZonesWafValue2 Function()? value, }) { return ZonesWaf(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesWaf &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesWaf(id: $id, value: $value)'; } 
 }
