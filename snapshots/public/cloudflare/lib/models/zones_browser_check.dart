// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Inspect the visitor's browser for headers commonly associated with
/// spammers and certain bots.
/// 
@immutable final class ZonesBrowserCheckId {const ZonesBrowserCheckId._(this.value);

factory ZonesBrowserCheckId.fromJson(String json) { return switch (json) {
  'browser_check' => browserCheck,
  _ => ZonesBrowserCheckId._(json),
}; }

static const ZonesBrowserCheckId browserCheck = ZonesBrowserCheckId._('browser_check');

static const List<ZonesBrowserCheckId> values = [browserCheck];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesBrowserCheckId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesBrowserCheckId($value)'; } 
 }
/// The status of Browser Integrity Check.
/// 
@immutable final class ZonesBrowserCheckValue2 {const ZonesBrowserCheckValue2._(this.value);

factory ZonesBrowserCheckValue2.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesBrowserCheckValue2._(json),
}; }

static const ZonesBrowserCheckValue2 $on = ZonesBrowserCheckValue2._('on');

static const ZonesBrowserCheckValue2 off = ZonesBrowserCheckValue2._('off');

static const List<ZonesBrowserCheckValue2> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesBrowserCheckValue2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesBrowserCheckValue2($value)'; } 
 }
@immutable final class ZonesBrowserCheck {const ZonesBrowserCheck({this.id, this.value, });

factory ZonesBrowserCheck.fromJson(Map<String, dynamic> json) { return ZonesBrowserCheck(
  id: json['id'] != null ? ZonesBrowserCheckId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesBrowserCheckValue2.fromJson(json['value'] as String) : null,
); }

/// Inspect the visitor's browser for headers commonly associated with
/// spammers and certain bots.
/// 
final ZonesBrowserCheckId? id;

/// The status of Browser Integrity Check.
/// 
final ZonesBrowserCheckValue2? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesBrowserCheck copyWith({ZonesBrowserCheckId Function()? id, ZonesBrowserCheckValue2 Function()? value, }) { return ZonesBrowserCheck(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesBrowserCheck &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesBrowserCheck(id: $id, value: $value)'; } 
 }
