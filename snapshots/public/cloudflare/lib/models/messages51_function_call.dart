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

@immutable
final class Messages51FunctionCall {
  const Messages51FunctionCall({this.messages51FunctionCallVariant1 = const Omittable.absent(),
this.messages51FunctionCallVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Messages51FunctionCall._({required this.rawValue, required this.messages51FunctionCallVariant1,
required this.messages51FunctionCallVariant2,});
  factory Messages51FunctionCall.fromJson(Object? json) => Messages51FunctionCall._(
    rawValue: Omittable(json),
    messages51FunctionCallVariant1: parseAnyOfVariant<Messages51FunctionCallVariant1>(json, (value) => Messages51FunctionCallVariant1.fromJson(value! as String)),
messages51FunctionCallVariant2: parseAnyOfVariant<Messages51FunctionCallVariant2>(json, (value) => Messages51FunctionCallVariant2.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Messages51FunctionCallVariant1> messages51FunctionCallVariant1;
final Omittable<Messages51FunctionCallVariant2> messages51FunctionCallVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => messages51FunctionCallVariant1.isPresent || messages51FunctionCallVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (messages51FunctionCallVariant1.isPresent) messages51FunctionCallVariant1.value?.toJson(),
if (messages51FunctionCallVariant2.isPresent) messages51FunctionCallVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Messages51FunctionCall && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Messages51FunctionCall(${toJson()})';
}
