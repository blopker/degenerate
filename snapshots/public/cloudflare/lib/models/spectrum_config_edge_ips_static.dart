// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of edge IP configuration specified. Statically allocated edge IPs use customer IPs in accordance with the ips array you specify. Only valid with ADDRESS DNS names.
final class SpectrumConfigEdgeIpsStaticType {const SpectrumConfigEdgeIpsStaticType._(this.value);

factory SpectrumConfigEdgeIpsStaticType.fromJson(String json) { return switch (json) {
  'static' => $static,
  _ => SpectrumConfigEdgeIpsStaticType._(json),
}; }

static const SpectrumConfigEdgeIpsStaticType $static = SpectrumConfigEdgeIpsStaticType._('static');

static const List<SpectrumConfigEdgeIpsStaticType> values = [$static];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SpectrumConfigEdgeIpsStaticType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SpectrumConfigEdgeIpsStaticType($value)'; } 
 }
final class SpectrumConfigEdgeIpsStatic {const SpectrumConfigEdgeIpsStatic({this.ips, this.type, });

factory SpectrumConfigEdgeIpsStatic.fromJson(Map<String, dynamic> json) { return SpectrumConfigEdgeIpsStatic(
  ips: (json['ips'] as List<dynamic>?)?.map((e) => e as String).toList(),
  type: json['type'] != null ? SpectrumConfigEdgeIpsStaticType.fromJson(json['type'] as String) : null,
); }

/// The array of customer owned IPs we broadcast via anycast for this hostname and application.
final List<String>? ips;

/// The type of edge IP configuration specified. Statically allocated edge IPs use customer IPs in accordance with the ips array you specify. Only valid with ADDRESS DNS names.
final SpectrumConfigEdgeIpsStaticType? type;

Map<String, dynamic> toJson() { return {
  'ips': ?ips,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
SpectrumConfigEdgeIpsStatic copyWith({List<String> Function()? ips, SpectrumConfigEdgeIpsStaticType Function()? type, }) { return SpectrumConfigEdgeIpsStatic(
  ips: ips != null ? ips() : this.ips,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumConfigEdgeIpsStatic &&
          listEquals(ips, other.ips) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(Object.hashAll(ips ?? const []), type); } 
@override String toString() { return 'SpectrumConfigEdgeIpsStatic(ips: $ips, type: $type)'; } 
 }
