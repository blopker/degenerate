// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'prompt43_function_call_variant2.dart';@immutable final class Prompt43FunctionCallVariant1 {const Prompt43FunctionCallVariant1._(this.value);

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

@immutable
final class Prompt43FunctionCall {
  const Prompt43FunctionCall({this.prompt43FunctionCallVariant1 = const Omittable.absent(),
this.prompt43FunctionCallVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Prompt43FunctionCall._({required this.rawValue, required this.prompt43FunctionCallVariant1,
required this.prompt43FunctionCallVariant2,});
  factory Prompt43FunctionCall.fromJson(Object? json) => Prompt43FunctionCall._(
    rawValue: Omittable(json),
    prompt43FunctionCallVariant1: parseAnyOfVariant<Prompt43FunctionCallVariant1>(json, (value) => Prompt43FunctionCallVariant1.fromJson(value! as String)),
prompt43FunctionCallVariant2: parseAnyOfVariant<Prompt43FunctionCallVariant2>(json, (value) => Prompt43FunctionCallVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Prompt43FunctionCallVariant1> prompt43FunctionCallVariant1;
final Omittable<Prompt43FunctionCallVariant2> prompt43FunctionCallVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => prompt43FunctionCallVariant1.isPresent || prompt43FunctionCallVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (prompt43FunctionCallVariant1.isPresent) prompt43FunctionCallVariant1.value?.toJson(),
if (prompt43FunctionCallVariant2.isPresent) prompt43FunctionCallVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Prompt43FunctionCall && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Prompt43FunctionCall(${toJson()})';
}
