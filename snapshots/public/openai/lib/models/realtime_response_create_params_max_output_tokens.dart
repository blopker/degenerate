// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RealtimeResponseCreateParamsMaxOutputTokensVariant2 {const RealtimeResponseCreateParamsMaxOutputTokensVariant2._(this.value);

factory RealtimeResponseCreateParamsMaxOutputTokensVariant2.fromJson(String json) { return switch (json) {
  'inf' => inf,
  _ => RealtimeResponseCreateParamsMaxOutputTokensVariant2._(json),
}; }

static const RealtimeResponseCreateParamsMaxOutputTokensVariant2 inf = RealtimeResponseCreateParamsMaxOutputTokensVariant2._('inf');

static const List<RealtimeResponseCreateParamsMaxOutputTokensVariant2> values = [inf];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeResponseCreateParamsMaxOutputTokensVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeResponseCreateParamsMaxOutputTokensVariant2($value)'; } 
 }
typedef RealtimeResponseCreateParamsMaxOutputTokens = OneOf2<int,RealtimeResponseCreateParamsMaxOutputTokensVariant2>;
