// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Apply a specific host header.
@immutable final class ZonesHostHeaderOverrideId {const ZonesHostHeaderOverrideId._(this.value);

factory ZonesHostHeaderOverrideId.fromJson(String json) { return switch (json) {
  'host_header_override' => hostHeaderOverride,
  _ => ZonesHostHeaderOverrideId._(json),
}; }

static const ZonesHostHeaderOverrideId hostHeaderOverride = ZonesHostHeaderOverrideId._('host_header_override');

static const List<ZonesHostHeaderOverrideId> values = [hostHeaderOverride];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesHostHeaderOverrideId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesHostHeaderOverrideId($value)'; } 
 }
@immutable final class ZonesHostHeaderOverride {const ZonesHostHeaderOverride({this.id, this.value, });

factory ZonesHostHeaderOverride.fromJson(Map<String, dynamic> json) { return ZonesHostHeaderOverride(
  id: json['id'] != null ? ZonesHostHeaderOverrideId.fromJson(json['id'] as String) : null,
  value: json['value'] as String?,
); }

/// Apply a specific host header.
final ZonesHostHeaderOverrideId? id;

/// The hostname to use in the `Host` header
final String? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesHostHeaderOverride copyWith({ZonesHostHeaderOverrideId Function()? id, String Function()? value, }) { return ZonesHostHeaderOverride(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesHostHeaderOverride &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesHostHeaderOverride(id: $id, value: $value)'; } 
 }
