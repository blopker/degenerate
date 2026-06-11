// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Turn on or off the True-Client-IP Header feature of the Cloudflare Network app.
/// 
@immutable final class ZonesTrueClientIpHeaderId {const ZonesTrueClientIpHeaderId._(this.value);

factory ZonesTrueClientIpHeaderId.fromJson(String json) { return switch (json) {
  'true_client_ip_header' => trueClientIpHeader,
  _ => ZonesTrueClientIpHeaderId._(json),
}; }

static const ZonesTrueClientIpHeaderId trueClientIpHeader = ZonesTrueClientIpHeaderId._('true_client_ip_header');

static const List<ZonesTrueClientIpHeaderId> values = [trueClientIpHeader];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesTrueClientIpHeaderId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesTrueClientIpHeaderId($value)'; } 
 }
/// The status of True Client IP Header.
/// 
@immutable final class ZonesTrueClientIpHeaderValue2 {const ZonesTrueClientIpHeaderValue2._(this.value);

factory ZonesTrueClientIpHeaderValue2.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesTrueClientIpHeaderValue2._(json),
}; }

static const ZonesTrueClientIpHeaderValue2 $on = ZonesTrueClientIpHeaderValue2._('on');

static const ZonesTrueClientIpHeaderValue2 off = ZonesTrueClientIpHeaderValue2._('off');

static const List<ZonesTrueClientIpHeaderValue2> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesTrueClientIpHeaderValue2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesTrueClientIpHeaderValue2($value)'; } 
 }
@immutable final class ZonesTrueClientIpHeader {const ZonesTrueClientIpHeader({this.id, this.value, });

factory ZonesTrueClientIpHeader.fromJson(Map<String, dynamic> json) { return ZonesTrueClientIpHeader(
  id: json['id'] != null ? ZonesTrueClientIpHeaderId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesTrueClientIpHeaderValue2.fromJson(json['value'] as String) : null,
); }

/// Turn on or off the True-Client-IP Header feature of the Cloudflare Network app.
/// 
final ZonesTrueClientIpHeaderId? id;

/// The status of True Client IP Header.
/// 
final ZonesTrueClientIpHeaderValue2? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesTrueClientIpHeader copyWith({ZonesTrueClientIpHeaderId Function()? id, ZonesTrueClientIpHeaderValue2 Function()? value, }) { return ZonesTrueClientIpHeader(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesTrueClientIpHeader &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesTrueClientIpHeader(id: $id, value: $value)'; } 
 }
