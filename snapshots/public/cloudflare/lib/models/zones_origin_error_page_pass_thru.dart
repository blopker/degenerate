// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Turn on or off Cloudflare error pages generated from issues sent from the origin server. If enabled, this setting triggers error pages issued by the origin.
/// 
@immutable final class ZonesOriginErrorPagePassThruId {const ZonesOriginErrorPagePassThruId._(this.value);

factory ZonesOriginErrorPagePassThruId.fromJson(String json) { return switch (json) {
  'origin_error_page_pass_thru' => originErrorPagePassThru,
  _ => ZonesOriginErrorPagePassThruId._(json),
}; }

static const ZonesOriginErrorPagePassThruId originErrorPagePassThru = ZonesOriginErrorPagePassThruId._('origin_error_page_pass_thru');

static const List<ZonesOriginErrorPagePassThruId> values = [originErrorPagePassThru];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesOriginErrorPagePassThruId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesOriginErrorPagePassThruId($value)'; } 
 }
/// The status of Origin Error Page Passthru.
/// 
@immutable final class ZonesOriginErrorPagePassThruValue2 {const ZonesOriginErrorPagePassThruValue2._(this.value);

factory ZonesOriginErrorPagePassThruValue2.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesOriginErrorPagePassThruValue2._(json),
}; }

static const ZonesOriginErrorPagePassThruValue2 $on = ZonesOriginErrorPagePassThruValue2._('on');

static const ZonesOriginErrorPagePassThruValue2 off = ZonesOriginErrorPagePassThruValue2._('off');

static const List<ZonesOriginErrorPagePassThruValue2> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesOriginErrorPagePassThruValue2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesOriginErrorPagePassThruValue2($value)'; } 
 }
@immutable final class ZonesOriginErrorPagePassThru {const ZonesOriginErrorPagePassThru({this.id, this.value, });

factory ZonesOriginErrorPagePassThru.fromJson(Map<String, dynamic> json) { return ZonesOriginErrorPagePassThru(
  id: json['id'] != null ? ZonesOriginErrorPagePassThruId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesOriginErrorPagePassThruValue2.fromJson(json['value'] as String) : null,
); }

/// Turn on or off Cloudflare error pages generated from issues sent from the origin server. If enabled, this setting triggers error pages issued by the origin.
/// 
final ZonesOriginErrorPagePassThruId? id;

/// The status of Origin Error Page Passthru.
/// 
final ZonesOriginErrorPagePassThruValue2? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesOriginErrorPagePassThru copyWith({ZonesOriginErrorPagePassThruId Function()? id, ZonesOriginErrorPagePassThruValue2 Function()? value, }) { return ZonesOriginErrorPagePassThru(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesOriginErrorPagePassThru &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesOriginErrorPagePassThru(id: $id, value: $value)'; } 
 }
