// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RealtimeSessionCreateRequestGaMaxOutputTokensVariant2 {const RealtimeSessionCreateRequestGaMaxOutputTokensVariant2._(this.value);

factory RealtimeSessionCreateRequestGaMaxOutputTokensVariant2.fromJson(String json) { return switch (json) {
  'inf' => inf,
  _ => RealtimeSessionCreateRequestGaMaxOutputTokensVariant2._(json),
}; }

static const RealtimeSessionCreateRequestGaMaxOutputTokensVariant2 inf = RealtimeSessionCreateRequestGaMaxOutputTokensVariant2._('inf');

static const List<RealtimeSessionCreateRequestGaMaxOutputTokensVariant2> values = [inf];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeSessionCreateRequestGaMaxOutputTokensVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeSessionCreateRequestGaMaxOutputTokensVariant2($value)'; } 
 }
typedef RealtimeSessionCreateRequestGaMaxOutputTokens = OneOf2<int,RealtimeSessionCreateRequestGaMaxOutputTokensVariant2>;