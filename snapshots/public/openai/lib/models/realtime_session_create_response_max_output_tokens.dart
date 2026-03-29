// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RealtimeSessionCreateResponseMaxOutputTokensVariant2 {const RealtimeSessionCreateResponseMaxOutputTokensVariant2._(this.value);

factory RealtimeSessionCreateResponseMaxOutputTokensVariant2.fromJson(String json) { return switch (json) {
  'inf' => inf,
  _ => RealtimeSessionCreateResponseMaxOutputTokensVariant2._(json),
}; }

static const RealtimeSessionCreateResponseMaxOutputTokensVariant2 inf = RealtimeSessionCreateResponseMaxOutputTokensVariant2._('inf');

static const List<RealtimeSessionCreateResponseMaxOutputTokensVariant2> values = [inf];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeSessionCreateResponseMaxOutputTokensVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeSessionCreateResponseMaxOutputTokensVariant2($value)'; } 
 }
typedef RealtimeSessionCreateResponseMaxOutputTokens = OneOf2<int,RealtimeSessionCreateResponseMaxOutputTokensVariant2>;