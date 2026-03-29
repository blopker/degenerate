// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'prompt43_function_call_variant2.dart';final class Prompt43FunctionCallVariant1 {const Prompt43FunctionCallVariant1._(this.value);

factory Prompt43FunctionCallVariant1.fromJson(String json) { return switch (json) {
  'none' => none,
  'auto' => auto,
  _ => Prompt43FunctionCallVariant1._(json),
}; }

static const Prompt43FunctionCallVariant1 none = Prompt43FunctionCallVariant1._('none');

static const Prompt43FunctionCallVariant1 auto = Prompt43FunctionCallVariant1._('auto');

static const List<Prompt43FunctionCallVariant1> values = [none, auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt43FunctionCallVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt43FunctionCallVariant1($value)'; } 
 }
typedef Prompt43FunctionCall = OneOf2<Prompt43FunctionCallVariant1,Prompt43FunctionCallVariant2>;