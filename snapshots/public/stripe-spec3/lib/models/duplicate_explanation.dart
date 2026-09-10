// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DuplicateExplanationVariant2 {const DuplicateExplanationVariant2._(this.value);

factory DuplicateExplanationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => DuplicateExplanationVariant2._(json),
}; }

static const DuplicateExplanationVariant2 $empty = DuplicateExplanationVariant2._('');

static const List<DuplicateExplanationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DuplicateExplanationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DuplicateExplanationVariant2($value)'; } 
 }

@immutable
final class DuplicateExplanation {
  const DuplicateExplanation({this.string = const Omittable.absent(),
this.duplicateExplanationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const DuplicateExplanation._({required this.rawValue, required this.string,
required this.duplicateExplanationVariant2,});
  factory DuplicateExplanation.fromJson(Object? json) => DuplicateExplanation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
duplicateExplanationVariant2: parseAnyOfVariant<DuplicateExplanationVariant2>(json, (value) => DuplicateExplanationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<DuplicateExplanationVariant2> duplicateExplanationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || duplicateExplanationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (duplicateExplanationVariant2.isPresent) duplicateExplanationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is DuplicateExplanation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'DuplicateExplanation(${toJson()})';
}
