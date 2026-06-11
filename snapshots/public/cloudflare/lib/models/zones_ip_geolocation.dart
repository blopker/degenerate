// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Cloudflare adds a CF-IPCountry HTTP header containing the country code that corresponds to the visitor.
/// 
@immutable final class ZonesIpGeolocationId {const ZonesIpGeolocationId._(this.value);

factory ZonesIpGeolocationId.fromJson(String json) { return switch (json) {
  'ip_geolocation' => ipGeolocation,
  _ => ZonesIpGeolocationId._(json),
}; }

static const ZonesIpGeolocationId ipGeolocation = ZonesIpGeolocationId._('ip_geolocation');

static const List<ZonesIpGeolocationId> values = [ipGeolocation];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesIpGeolocationId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesIpGeolocationId($value)'; } 
 }
/// The status of adding the IP Geolocation Header.
/// 
@immutable final class ZonesIpGeolocationValue2 {const ZonesIpGeolocationValue2._(this.value);

factory ZonesIpGeolocationValue2.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesIpGeolocationValue2._(json),
}; }

static const ZonesIpGeolocationValue2 $on = ZonesIpGeolocationValue2._('on');

static const ZonesIpGeolocationValue2 off = ZonesIpGeolocationValue2._('off');

static const List<ZonesIpGeolocationValue2> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesIpGeolocationValue2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesIpGeolocationValue2($value)'; } 
 }
@immutable final class ZonesIpGeolocation {const ZonesIpGeolocation({this.id, this.value, });

factory ZonesIpGeolocation.fromJson(Map<String, dynamic> json) { return ZonesIpGeolocation(
  id: json['id'] != null ? ZonesIpGeolocationId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesIpGeolocationValue2.fromJson(json['value'] as String) : null,
); }

/// Cloudflare adds a CF-IPCountry HTTP header containing the country code that corresponds to the visitor.
/// 
final ZonesIpGeolocationId? id;

/// The status of adding the IP Geolocation Header.
/// 
final ZonesIpGeolocationValue2? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesIpGeolocation copyWith({ZonesIpGeolocationId Function()? id, ZonesIpGeolocationValue2 Function()? value, }) { return ZonesIpGeolocation(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesIpGeolocation &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesIpGeolocation(id: $id, value: $value)'; } 
 }
