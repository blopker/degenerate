// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of packet capture. `Simple` captures sampled packets, and `full` captures entire payloads and non-sampled packets.
@immutable final class MagicVisibilityPcapsPcapsType {const MagicVisibilityPcapsPcapsType._(this.value);

factory MagicVisibilityPcapsPcapsType.fromJson(String json) { return switch (json) {
  'simple' => simple,
  'full' => full,
  _ => MagicVisibilityPcapsPcapsType._(json),
}; }

static const MagicVisibilityPcapsPcapsType simple = MagicVisibilityPcapsPcapsType._('simple');

static const MagicVisibilityPcapsPcapsType full = MagicVisibilityPcapsPcapsType._('full');

static const List<MagicVisibilityPcapsPcapsType> values = [simple, full];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MagicVisibilityPcapsPcapsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MagicVisibilityPcapsPcapsType($value)'; } 
 }
