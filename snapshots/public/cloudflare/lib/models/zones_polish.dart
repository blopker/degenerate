// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Apply options from the Polish feature of the Cloudflare Speed app.
/// 
@immutable final class ZonesPolishId {const ZonesPolishId._(this.value);

factory ZonesPolishId.fromJson(String json) { return switch (json) {
  'polish' => polish,
  _ => ZonesPolishId._(json),
}; }

static const ZonesPolishId polish = ZonesPolishId._('polish');

static const List<ZonesPolishId> values = [polish];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesPolishId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesPolishId($value)'; } 
 }
/// The level of Polish you want applied to your origin.
/// 
@immutable final class ZonesPolishValue2 {const ZonesPolishValue2._(this.value);

factory ZonesPolishValue2.fromJson(String json) { return switch (json) {
  'off' => off,
  'lossless' => lossless,
  'lossy' => lossy,
  _ => ZonesPolishValue2._(json),
}; }

static const ZonesPolishValue2 off = ZonesPolishValue2._('off');

static const ZonesPolishValue2 lossless = ZonesPolishValue2._('lossless');

static const ZonesPolishValue2 lossy = ZonesPolishValue2._('lossy');

static const List<ZonesPolishValue2> values = [off, lossless, lossy];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesPolishValue2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesPolishValue2($value)'; } 
 }
@immutable final class ZonesPolish {const ZonesPolish({this.id, this.value, });

factory ZonesPolish.fromJson(Map<String, dynamic> json) { return ZonesPolish(
  id: json['id'] != null ? ZonesPolishId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesPolishValue2.fromJson(json['value'] as String) : null,
); }

/// Apply options from the Polish feature of the Cloudflare Speed app.
/// 
final ZonesPolishId? id;

/// The level of Polish you want applied to your origin.
/// 
final ZonesPolishValue2? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesPolish copyWith({ZonesPolishId Function()? id, ZonesPolishValue2 Function()? value, }) { return ZonesPolish(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesPolish &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesPolish(id: $id, value: $value)'; } 
 }
