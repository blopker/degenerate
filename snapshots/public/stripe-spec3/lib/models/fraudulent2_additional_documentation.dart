// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Fraudulent2AdditionalDocumentationVariant2 {const Fraudulent2AdditionalDocumentationVariant2._(this.value);

factory Fraudulent2AdditionalDocumentationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => Fraudulent2AdditionalDocumentationVariant2._(json),
}; }

static const Fraudulent2AdditionalDocumentationVariant2 $empty = Fraudulent2AdditionalDocumentationVariant2._('');

static const List<Fraudulent2AdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Fraudulent2AdditionalDocumentationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Fraudulent2AdditionalDocumentationVariant2($value)'; } 
 }

@immutable
final class Fraudulent2AdditionalDocumentation {
  const Fraudulent2AdditionalDocumentation({this.string = const Omittable.absent(),
this.fraudulent2AdditionalDocumentationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Fraudulent2AdditionalDocumentation._({required this.rawValue, required this.string,
required this.fraudulent2AdditionalDocumentationVariant2,});
  factory Fraudulent2AdditionalDocumentation.fromJson(Object? json) => Fraudulent2AdditionalDocumentation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
fraudulent2AdditionalDocumentationVariant2: parseAnyOfVariant<Fraudulent2AdditionalDocumentationVariant2>(json, (value) => Fraudulent2AdditionalDocumentationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Fraudulent2AdditionalDocumentationVariant2> fraudulent2AdditionalDocumentationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || fraudulent2AdditionalDocumentationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (fraudulent2AdditionalDocumentationVariant2.isPresent) fraudulent2AdditionalDocumentationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Fraudulent2AdditionalDocumentation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Fraudulent2AdditionalDocumentation(${toJson()})';
}
