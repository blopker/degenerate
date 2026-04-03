// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RealtimeBetaResponseCreateParamsMaxOutputTokensVariant2 {const RealtimeBetaResponseCreateParamsMaxOutputTokensVariant2._(this.value);

factory RealtimeBetaResponseCreateParamsMaxOutputTokensVariant2.fromJson(String json) { return switch (json) {
  'inf' => inf,
  _ => RealtimeBetaResponseCreateParamsMaxOutputTokensVariant2._(json),
}; }

static const RealtimeBetaResponseCreateParamsMaxOutputTokensVariant2 inf = RealtimeBetaResponseCreateParamsMaxOutputTokensVariant2._('inf');

static const List<RealtimeBetaResponseCreateParamsMaxOutputTokensVariant2> values = [inf];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeBetaResponseCreateParamsMaxOutputTokensVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeBetaResponseCreateParamsMaxOutputTokensVariant2($value)'; } 
 }
typedef RealtimeBetaResponseCreateParamsMaxOutputTokens = OneOf2<int,RealtimeBetaResponseCreateParamsMaxOutputTokensVariant2>;
