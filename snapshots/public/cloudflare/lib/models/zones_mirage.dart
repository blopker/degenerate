// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Cloudflare Mirage reduces bandwidth used by images in mobile browsers.
/// It can accelerate loading of image-heavy websites on very slow mobile connections and HTTP/1.
/// 
@immutable final class ZonesMirageId {const ZonesMirageId._(this.value);

factory ZonesMirageId.fromJson(String json) { return switch (json) {
  'mirage' => mirage,
  _ => ZonesMirageId._(json),
}; }

static const ZonesMirageId mirage = ZonesMirageId._('mirage');

static const List<ZonesMirageId> values = [mirage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesMirageId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesMirageId($value)'; } 
 }
/// The status of Mirage.
/// 
@immutable final class ZonesMirageValue2 {const ZonesMirageValue2._(this.value);

factory ZonesMirageValue2.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesMirageValue2._(json),
}; }

static const ZonesMirageValue2 $on = ZonesMirageValue2._('on');

static const ZonesMirageValue2 off = ZonesMirageValue2._('off');

static const List<ZonesMirageValue2> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesMirageValue2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesMirageValue2($value)'; } 
 }
@immutable final class ZonesMirage {const ZonesMirage({this.id, this.value, });

factory ZonesMirage.fromJson(Map<String, dynamic> json) { return ZonesMirage(
  id: json['id'] != null ? ZonesMirageId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesMirageValue2.fromJson(json['value'] as String) : null,
); }

/// Cloudflare Mirage reduces bandwidth used by images in mobile browsers.
/// It can accelerate loading of image-heavy websites on very slow mobile connections and HTTP/1.
/// 
final ZonesMirageId? id;

/// The status of Mirage.
/// 
final ZonesMirageValue2? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesMirage copyWith({ZonesMirageId Function()? id, ZonesMirageValue2 Function()? value, }) { return ZonesMirage(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesMirage &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesMirage(id: $id, value: $value)'; } 
 }
