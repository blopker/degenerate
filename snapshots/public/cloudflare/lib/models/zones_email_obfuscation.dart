// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Turn on or off **Email Obfuscation**.
@immutable final class ZonesEmailObfuscationId {const ZonesEmailObfuscationId._(this.value);

factory ZonesEmailObfuscationId.fromJson(String json) { return switch (json) {
  'email_obfuscation' => emailObfuscation,
  _ => ZonesEmailObfuscationId._(json),
}; }

static const ZonesEmailObfuscationId emailObfuscation = ZonesEmailObfuscationId._('email_obfuscation');

static const List<ZonesEmailObfuscationId> values = [emailObfuscation];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesEmailObfuscationId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesEmailObfuscationId($value)'; } 
 }
/// The status of Email Obfuscation.
/// 
@immutable final class ZonesEmailObfuscationValue2 {const ZonesEmailObfuscationValue2._(this.value);

factory ZonesEmailObfuscationValue2.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesEmailObfuscationValue2._(json),
}; }

static const ZonesEmailObfuscationValue2 $on = ZonesEmailObfuscationValue2._('on');

static const ZonesEmailObfuscationValue2 off = ZonesEmailObfuscationValue2._('off');

static const List<ZonesEmailObfuscationValue2> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesEmailObfuscationValue2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesEmailObfuscationValue2($value)'; } 
 }
@immutable final class ZonesEmailObfuscation {const ZonesEmailObfuscation({this.id, this.value, });

factory ZonesEmailObfuscation.fromJson(Map<String, dynamic> json) { return ZonesEmailObfuscation(
  id: json['id'] != null ? ZonesEmailObfuscationId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesEmailObfuscationValue2.fromJson(json['value'] as String) : null,
); }

/// Turn on or off **Email Obfuscation**.
final ZonesEmailObfuscationId? id;

/// The status of Email Obfuscation.
/// 
final ZonesEmailObfuscationValue2? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesEmailObfuscation copyWith({ZonesEmailObfuscationId Function()? id, ZonesEmailObfuscationValue2 Function()? value, }) { return ZonesEmailObfuscation(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesEmailObfuscation &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesEmailObfuscation(id: $id, value: $value)'; } 
 }
