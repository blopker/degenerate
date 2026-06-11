// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
@immutable final class ZonesRedirectsForAiTrainingValue {const ZonesRedirectsForAiTrainingValue._(this.value);

factory ZonesRedirectsForAiTrainingValue.fromJson(String json) { return switch (json) {
  'off' => off,
  'on' => $on,
  _ => ZonesRedirectsForAiTrainingValue._(json),
}; }

static const ZonesRedirectsForAiTrainingValue off = ZonesRedirectsForAiTrainingValue._('off');

static const ZonesRedirectsForAiTrainingValue $on = ZonesRedirectsForAiTrainingValue._('on');

static const List<ZonesRedirectsForAiTrainingValue> values = [off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesRedirectsForAiTrainingValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesRedirectsForAiTrainingValue($value)'; } 
 }
