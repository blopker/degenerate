// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_polish_value.dart';/// Apply options from the Polish feature of the Cloudflare Speed app.
/// 
final class ZonesPolishId {const ZonesPolishId._(this.value);

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
final class ZonesPolish {const ZonesPolish({this.id, this.value, });

factory ZonesPolish.fromJson(Map<String, dynamic> json) { return ZonesPolish(
  id: json['id'] != null ? ZonesPolishId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesPolishValue.fromJson(json['value'] as String) : null,
); }

/// Apply options from the Polish feature of the Cloudflare Speed app.
/// 
final ZonesPolishId? id;

/// The level of Polish you want applied to your origin.
/// 
final ZonesPolishValue? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZonesPolish copyWith({ZonesPolishId Function()? id, ZonesPolishValue Function()? value, }) { return ZonesPolish(
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
