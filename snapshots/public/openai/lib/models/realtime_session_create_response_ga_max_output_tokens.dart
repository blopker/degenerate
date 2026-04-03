// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RealtimeSessionCreateResponseGaMaxOutputTokensVariant2 {const RealtimeSessionCreateResponseGaMaxOutputTokensVariant2._(this.value);

factory RealtimeSessionCreateResponseGaMaxOutputTokensVariant2.fromJson(String json) { return switch (json) {
  'inf' => inf,
  _ => RealtimeSessionCreateResponseGaMaxOutputTokensVariant2._(json),
}; }

static const RealtimeSessionCreateResponseGaMaxOutputTokensVariant2 inf = RealtimeSessionCreateResponseGaMaxOutputTokensVariant2._('inf');

static const List<RealtimeSessionCreateResponseGaMaxOutputTokensVariant2> values = [inf];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeSessionCreateResponseGaMaxOutputTokensVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeSessionCreateResponseGaMaxOutputTokensVariant2($value)'; } 
 }
typedef RealtimeSessionCreateResponseGaMaxOutputTokens = OneOf2<int,RealtimeSessionCreateResponseGaMaxOutputTokensVariant2>;
