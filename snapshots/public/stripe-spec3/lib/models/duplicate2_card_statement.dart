// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class Duplicate2CardStatementVariant2 {const Duplicate2CardStatementVariant2._(this.value);

factory Duplicate2CardStatementVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => Duplicate2CardStatementVariant2._(json),
}; }

static const Duplicate2CardStatementVariant2 $empty = Duplicate2CardStatementVariant2._('');

static const List<Duplicate2CardStatementVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Duplicate2CardStatementVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Duplicate2CardStatementVariant2($value)'; } 
 }
typedef Duplicate2CardStatement = OneOf2<String,Duplicate2CardStatementVariant2>;