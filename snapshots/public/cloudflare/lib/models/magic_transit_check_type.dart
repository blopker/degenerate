// GENERATED CODE - DO NOT MODIFY BY HAND

/// type of check to perform
final class MagicTransitCheckType {const MagicTransitCheckType._(this.value);

factory MagicTransitCheckType.fromJson(String json) { return switch (json) {
  'icmp' => icmp,
  _ => MagicTransitCheckType._(json),
}; }

static const MagicTransitCheckType icmp = MagicTransitCheckType._('icmp');

static const List<MagicTransitCheckType> values = [icmp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MagicTransitCheckType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MagicTransitCheckType($value)'; } 
 }
