// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetEvalRunsOrder {const GetEvalRunsOrder._(this.value);

factory GetEvalRunsOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => GetEvalRunsOrder._(json),
}; }

static const GetEvalRunsOrder asc = GetEvalRunsOrder._('asc');

static const GetEvalRunsOrder desc = GetEvalRunsOrder._('desc');

static const List<GetEvalRunsOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetEvalRunsOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetEvalRunsOrder($value)'; } 
 }
