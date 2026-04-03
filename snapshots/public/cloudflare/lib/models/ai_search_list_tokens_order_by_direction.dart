// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Order By Direction
@immutable final class AiSearchListTokensOrderByDirection {const AiSearchListTokensOrderByDirection._(this.value);

factory AiSearchListTokensOrderByDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => AiSearchListTokensOrderByDirection._(json),
}; }

static const AiSearchListTokensOrderByDirection asc = AiSearchListTokensOrderByDirection._('asc');

static const AiSearchListTokensOrderByDirection desc = AiSearchListTokensOrderByDirection._('desc');

static const List<AiSearchListTokensOrderByDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchListTokensOrderByDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchListTokensOrderByDirection($value)'; } 
 }
