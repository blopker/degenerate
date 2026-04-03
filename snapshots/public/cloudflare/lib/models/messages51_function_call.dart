// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages51_function_call_variant2.dart';@immutable final class Messages51FunctionCallVariant1 {const Messages51FunctionCallVariant1._(this.value);

factory Messages51FunctionCallVariant1.fromJson(String json) { return switch (json) {
  'none' => none,
  'auto' => auto,
  _ => Messages51FunctionCallVariant1._(json),
}; }

static const Messages51FunctionCallVariant1 none = Messages51FunctionCallVariant1._('none');

static const Messages51FunctionCallVariant1 auto = Messages51FunctionCallVariant1._('auto');

static const List<Messages51FunctionCallVariant1> values = [none, auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages51FunctionCallVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages51FunctionCallVariant1($value)'; } 
 }
typedef Messages51FunctionCall = OneOf2<Messages51FunctionCallVariant1,Messages51FunctionCallVariant2>;
