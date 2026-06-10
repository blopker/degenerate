// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Turn on or off Automatic HTTPS Rewrites.
@immutable final class ZonesAutomaticHttpsRewritesId {const ZonesAutomaticHttpsRewritesId._(this.value);

factory ZonesAutomaticHttpsRewritesId.fromJson(String json) { return switch (json) {
  'automatic_https_rewrites' => automaticHttpsRewrites,
  _ => ZonesAutomaticHttpsRewritesId._(json),
}; }

static const ZonesAutomaticHttpsRewritesId automaticHttpsRewrites = ZonesAutomaticHttpsRewritesId._('automatic_https_rewrites');

static const List<ZonesAutomaticHttpsRewritesId> values = [automaticHttpsRewrites];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesAutomaticHttpsRewritesId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesAutomaticHttpsRewritesId($value)'; } 
 }
/// The status of Automatic HTTPS Rewrites.
/// 
@immutable final class ZonesAutomaticHttpsRewritesValue2 {const ZonesAutomaticHttpsRewritesValue2._(this.value);

factory ZonesAutomaticHttpsRewritesValue2.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesAutomaticHttpsRewritesValue2._(json),
}; }

static const ZonesAutomaticHttpsRewritesValue2 $on = ZonesAutomaticHttpsRewritesValue2._('on');

static const ZonesAutomaticHttpsRewritesValue2 off = ZonesAutomaticHttpsRewritesValue2._('off');

static const List<ZonesAutomaticHttpsRewritesValue2> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesAutomaticHttpsRewritesValue2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesAutomaticHttpsRewritesValue2($value)'; } 
 }
@immutable final class ZonesAutomaticHttpsRewrites {const ZonesAutomaticHttpsRewrites({this.id, this.value, });

factory ZonesAutomaticHttpsRewrites.fromJson(Map<String, dynamic> json) { return ZonesAutomaticHttpsRewrites(
  id: json['id'] != null ? ZonesAutomaticHttpsRewritesId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesAutomaticHttpsRewritesValue2.fromJson(json['value'] as String) : null,
); }

/// Turn on or off Automatic HTTPS Rewrites.
final ZonesAutomaticHttpsRewritesId? id;

/// The status of Automatic HTTPS Rewrites.
/// 
final ZonesAutomaticHttpsRewritesValue2? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesAutomaticHttpsRewrites copyWith({ZonesAutomaticHttpsRewritesId Function()? id, ZonesAutomaticHttpsRewritesValue2 Function()? value, }) { return ZonesAutomaticHttpsRewrites(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesAutomaticHttpsRewrites &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesAutomaticHttpsRewrites(id: $id, value: $value)'; } 
 }
