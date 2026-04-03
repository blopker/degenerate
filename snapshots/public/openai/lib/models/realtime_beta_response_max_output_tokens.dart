// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RealtimeBetaResponseMaxOutputTokensVariant2 {const RealtimeBetaResponseMaxOutputTokensVariant2._(this.value);

factory RealtimeBetaResponseMaxOutputTokensVariant2.fromJson(String json) { return switch (json) {
  'inf' => inf,
  _ => RealtimeBetaResponseMaxOutputTokensVariant2._(json),
}; }

static const RealtimeBetaResponseMaxOutputTokensVariant2 inf = RealtimeBetaResponseMaxOutputTokensVariant2._('inf');

static const List<RealtimeBetaResponseMaxOutputTokensVariant2> values = [inf];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeBetaResponseMaxOutputTokensVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeBetaResponseMaxOutputTokensVariant2($value)'; } 
 }
typedef RealtimeBetaResponseMaxOutputTokens = OneOf2<int,RealtimeBetaResponseMaxOutputTokensVariant2>;
