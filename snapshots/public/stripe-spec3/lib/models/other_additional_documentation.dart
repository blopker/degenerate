// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class OtherAdditionalDocumentationVariant2 {const OtherAdditionalDocumentationVariant2._(this.value);

factory OtherAdditionalDocumentationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => OtherAdditionalDocumentationVariant2._(json),
}; }

static const OtherAdditionalDocumentationVariant2 $empty = OtherAdditionalDocumentationVariant2._('');

static const List<OtherAdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OtherAdditionalDocumentationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OtherAdditionalDocumentationVariant2($value)'; } 
 }

@immutable
final class OtherAdditionalDocumentation {
  const OtherAdditionalDocumentation({this.string = const Omittable.absent(),
this.otherAdditionalDocumentationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const OtherAdditionalDocumentation._({required this.rawValue, required this.string,
required this.otherAdditionalDocumentationVariant2,});
  factory OtherAdditionalDocumentation.fromJson(Object? json) => OtherAdditionalDocumentation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
otherAdditionalDocumentationVariant2: parseAnyOfVariant<OtherAdditionalDocumentationVariant2>(json, (value) => OtherAdditionalDocumentationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<OtherAdditionalDocumentationVariant2> otherAdditionalDocumentationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || otherAdditionalDocumentationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (otherAdditionalDocumentationVariant2.isPresent) otherAdditionalDocumentationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is OtherAdditionalDocumentation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'OtherAdditionalDocumentation(${toJson()})';
}
