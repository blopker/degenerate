// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DuplicateAdditionalDocumentationVariant2 {const DuplicateAdditionalDocumentationVariant2._(this.value);

factory DuplicateAdditionalDocumentationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => DuplicateAdditionalDocumentationVariant2._(json),
}; }

static const DuplicateAdditionalDocumentationVariant2 $empty = DuplicateAdditionalDocumentationVariant2._('');

static const List<DuplicateAdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DuplicateAdditionalDocumentationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DuplicateAdditionalDocumentationVariant2($value)'; } 
 }

@immutable
final class DuplicateAdditionalDocumentation {
  const DuplicateAdditionalDocumentation({this.string = const Omittable.absent(),
this.duplicateAdditionalDocumentationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const DuplicateAdditionalDocumentation._({required this.rawValue, required this.string,
required this.duplicateAdditionalDocumentationVariant2,});
  factory DuplicateAdditionalDocumentation.fromJson(Object? json) => DuplicateAdditionalDocumentation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
duplicateAdditionalDocumentationVariant2: parseAnyOfVariant<DuplicateAdditionalDocumentationVariant2>(json, (value) => DuplicateAdditionalDocumentationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<DuplicateAdditionalDocumentationVariant2> duplicateAdditionalDocumentationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || duplicateAdditionalDocumentationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (duplicateAdditionalDocumentationVariant2.isPresent) duplicateAdditionalDocumentationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is DuplicateAdditionalDocumentation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'DuplicateAdditionalDocumentation(${toJson()})';
}
