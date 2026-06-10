// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Turn on or off Rocket Loader in the Cloudflare Speed app.
/// 
@immutable final class ZonesRocketLoaderId {const ZonesRocketLoaderId._(this.value);

factory ZonesRocketLoaderId.fromJson(String json) { return switch (json) {
  'rocket_loader' => rocketLoader,
  _ => ZonesRocketLoaderId._(json),
}; }

static const ZonesRocketLoaderId rocketLoader = ZonesRocketLoaderId._('rocket_loader');

static const List<ZonesRocketLoaderId> values = [rocketLoader];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesRocketLoaderId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesRocketLoaderId($value)'; } 
 }
/// The status of Rocket Loader
/// 
@immutable final class ZonesRocketLoaderValue2 {const ZonesRocketLoaderValue2._(this.value);

factory ZonesRocketLoaderValue2.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesRocketLoaderValue2._(json),
}; }

static const ZonesRocketLoaderValue2 $on = ZonesRocketLoaderValue2._('on');

static const ZonesRocketLoaderValue2 off = ZonesRocketLoaderValue2._('off');

static const List<ZonesRocketLoaderValue2> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesRocketLoaderValue2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesRocketLoaderValue2($value)'; } 
 }
@immutable final class ZonesRocketLoader {const ZonesRocketLoader({this.id, this.value, });

factory ZonesRocketLoader.fromJson(Map<String, dynamic> json) { return ZonesRocketLoader(
  id: json['id'] != null ? ZonesRocketLoaderId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesRocketLoaderValue2.fromJson(json['value'] as String) : null,
); }

/// Turn on or off Rocket Loader in the Cloudflare Speed app.
/// 
final ZonesRocketLoaderId? id;

/// The status of Rocket Loader
/// 
final ZonesRocketLoaderValue2? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesRocketLoader copyWith({ZonesRocketLoaderId Function()? id, ZonesRocketLoaderValue2 Function()? value, }) { return ZonesRocketLoader(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesRocketLoader &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesRocketLoader(id: $id, value: $value)'; } 
 }
