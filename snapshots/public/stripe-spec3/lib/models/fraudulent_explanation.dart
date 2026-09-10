// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class FraudulentExplanationVariant2 {const FraudulentExplanationVariant2._(this.value);

factory FraudulentExplanationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => FraudulentExplanationVariant2._(json),
}; }

static const FraudulentExplanationVariant2 $empty = FraudulentExplanationVariant2._('');

static const List<FraudulentExplanationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FraudulentExplanationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FraudulentExplanationVariant2($value)'; } 
 }

@immutable
final class FraudulentExplanation {
  const FraudulentExplanation({this.string = const Omittable.absent(),
this.fraudulentExplanationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const FraudulentExplanation._({required this.rawValue, required this.string,
required this.fraudulentExplanationVariant2,});
  factory FraudulentExplanation.fromJson(Object? json) => FraudulentExplanation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
fraudulentExplanationVariant2: parseAnyOfVariant<FraudulentExplanationVariant2>(json, (value) => FraudulentExplanationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<FraudulentExplanationVariant2> fraudulentExplanationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || fraudulentExplanationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (fraudulentExplanationVariant2.isPresent) fraudulentExplanationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is FraudulentExplanation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'FraudulentExplanation(${toJson()})';
}
