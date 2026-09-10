// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Duplicate2AdditionalDocumentationVariant2 {const Duplicate2AdditionalDocumentationVariant2._(this.value);

factory Duplicate2AdditionalDocumentationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => Duplicate2AdditionalDocumentationVariant2._(json),
};}

static const Duplicate2AdditionalDocumentationVariant2 $empty = Duplicate2AdditionalDocumentationVariant2._('');

static const List<Duplicate2AdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is Duplicate2AdditionalDocumentationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'Duplicate2AdditionalDocumentationVariant2($value)';}
}

@immutable
final class Duplicate2AdditionalDocumentation {
  const Duplicate2AdditionalDocumentation({this.string = const Omittable.absent(),
this.duplicate2AdditionalDocumentationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Duplicate2AdditionalDocumentation._({required this.rawValue, required this.string,
required this.duplicate2AdditionalDocumentationVariant2,});
  factory Duplicate2AdditionalDocumentation.fromJson(Object? json) => Duplicate2AdditionalDocumentation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
duplicate2AdditionalDocumentationVariant2: parseAnyOfVariant<Duplicate2AdditionalDocumentationVariant2>(json, (value) => Duplicate2AdditionalDocumentationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Duplicate2AdditionalDocumentationVariant2> duplicate2AdditionalDocumentationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || duplicate2AdditionalDocumentationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (duplicate2AdditionalDocumentationVariant2.isPresent) duplicate2AdditionalDocumentationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Duplicate2AdditionalDocumentation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Duplicate2AdditionalDocumentation(${toJson()})';
}
