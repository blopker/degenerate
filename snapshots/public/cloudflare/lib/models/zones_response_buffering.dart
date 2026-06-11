// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Turn on or off whether Cloudflare should wait for an entire file
/// from the origin server before forwarding it to the site visitor. By
/// default, Cloudflare sends packets to the client as they arrive from
/// the origin server.
/// 
@immutable final class ZonesResponseBufferingId {const ZonesResponseBufferingId._(this.value);

factory ZonesResponseBufferingId.fromJson(String json) { return switch (json) {
  'response_buffering' => responseBuffering,
  _ => ZonesResponseBufferingId._(json),
}; }

static const ZonesResponseBufferingId responseBuffering = ZonesResponseBufferingId._('response_buffering');

static const List<ZonesResponseBufferingId> values = [responseBuffering];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesResponseBufferingId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesResponseBufferingId($value)'; } 
 }
/// The status of Response Buffering
/// 
@immutable final class ZonesResponseBufferingValue2 {const ZonesResponseBufferingValue2._(this.value);

factory ZonesResponseBufferingValue2.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesResponseBufferingValue2._(json),
}; }

static const ZonesResponseBufferingValue2 $on = ZonesResponseBufferingValue2._('on');

static const ZonesResponseBufferingValue2 off = ZonesResponseBufferingValue2._('off');

static const List<ZonesResponseBufferingValue2> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesResponseBufferingValue2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesResponseBufferingValue2($value)'; } 
 }
@immutable final class ZonesResponseBuffering {const ZonesResponseBuffering({this.id, this.value, });

factory ZonesResponseBuffering.fromJson(Map<String, dynamic> json) { return ZonesResponseBuffering(
  id: json['id'] != null ? ZonesResponseBufferingId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesResponseBufferingValue2.fromJson(json['value'] as String) : null,
); }

/// Turn on or off whether Cloudflare should wait for an entire file
/// from the origin server before forwarding it to the site visitor. By
/// default, Cloudflare sends packets to the client as they arrive from
/// the origin server.
/// 
final ZonesResponseBufferingId? id;

/// The status of Response Buffering
/// 
final ZonesResponseBufferingValue2? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesResponseBuffering copyWith({ZonesResponseBufferingId Function()? id, ZonesResponseBufferingValue2 Function()? value, }) { return ZonesResponseBuffering(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesResponseBuffering &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesResponseBuffering(id: $id, value: $value)'; } 
 }
