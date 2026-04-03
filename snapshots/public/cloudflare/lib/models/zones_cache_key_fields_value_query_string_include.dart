// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Include all query string parameters.
/// 
@immutable final class ZonesCacheKeyFieldsValueQueryStringIncludeVariant1 {const ZonesCacheKeyFieldsValueQueryStringIncludeVariant1._(this.value);

factory ZonesCacheKeyFieldsValueQueryStringIncludeVariant1.fromJson(String json) { return switch (json) {
  '*' => $empty,
  _ => ZonesCacheKeyFieldsValueQueryStringIncludeVariant1._(json),
}; }

static const ZonesCacheKeyFieldsValueQueryStringIncludeVariant1 $empty = ZonesCacheKeyFieldsValueQueryStringIncludeVariant1._('*');

static const List<ZonesCacheKeyFieldsValueQueryStringIncludeVariant1> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCacheKeyFieldsValueQueryStringIncludeVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCacheKeyFieldsValueQueryStringIncludeVariant1($value)'; } 
 }
typedef ZonesCacheKeyFieldsValueQueryStringInclude = OneOf2<ZonesCacheKeyFieldsValueQueryStringIncludeVariant1,List<String>>;
