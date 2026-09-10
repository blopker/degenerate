// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Duplicate2ExplanationVariant2 {const Duplicate2ExplanationVariant2._(this.value);

factory Duplicate2ExplanationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => Duplicate2ExplanationVariant2._(json),
}; }

static const Duplicate2ExplanationVariant2 $empty = Duplicate2ExplanationVariant2._('');

static const List<Duplicate2ExplanationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Duplicate2ExplanationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Duplicate2ExplanationVariant2($value)'; } 
 }

@immutable
final class Duplicate2Explanation {
  const Duplicate2Explanation({this.string = const Omittable.absent(),
this.duplicate2ExplanationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Duplicate2Explanation._({required this.rawValue, required this.string,
required this.duplicate2ExplanationVariant2,});
  factory Duplicate2Explanation.fromJson(Object? json) => Duplicate2Explanation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
duplicate2ExplanationVariant2: parseAnyOfVariant<Duplicate2ExplanationVariant2>(json, (value) => Duplicate2ExplanationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Duplicate2ExplanationVariant2> duplicate2ExplanationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || duplicate2ExplanationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (duplicate2ExplanationVariant2.isPresent) duplicate2ExplanationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Duplicate2Explanation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Duplicate2Explanation(${toJson()})';
}
