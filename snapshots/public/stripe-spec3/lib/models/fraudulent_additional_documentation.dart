// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class FraudulentAdditionalDocumentationVariant2 {const FraudulentAdditionalDocumentationVariant2._(this.value);

factory FraudulentAdditionalDocumentationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => FraudulentAdditionalDocumentationVariant2._(json),
}; }

static const FraudulentAdditionalDocumentationVariant2 $empty = FraudulentAdditionalDocumentationVariant2._('');

static const List<FraudulentAdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FraudulentAdditionalDocumentationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FraudulentAdditionalDocumentationVariant2($value)'; } 
 }

@immutable
final class FraudulentAdditionalDocumentation {
  const FraudulentAdditionalDocumentation({this.string = const Omittable.absent(),
this.fraudulentAdditionalDocumentationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const FraudulentAdditionalDocumentation._({required this.rawValue, required this.string,
required this.fraudulentAdditionalDocumentationVariant2,});
  factory FraudulentAdditionalDocumentation.fromJson(Object? json) => FraudulentAdditionalDocumentation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
fraudulentAdditionalDocumentationVariant2: parseAnyOfVariant<FraudulentAdditionalDocumentationVariant2>(json, (value) => FraudulentAdditionalDocumentationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<FraudulentAdditionalDocumentationVariant2> fraudulentAdditionalDocumentationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || fraudulentAdditionalDocumentationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (fraudulentAdditionalDocumentationVariant2.isPresent) fraudulentAdditionalDocumentationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is FraudulentAdditionalDocumentation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'FraudulentAdditionalDocumentation(${toJson()})';
}
