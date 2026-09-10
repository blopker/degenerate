// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MerchandiseNotAsDescribed2AdditionalDocumentationVariant2 {const MerchandiseNotAsDescribed2AdditionalDocumentationVariant2._(this.value);

factory MerchandiseNotAsDescribed2AdditionalDocumentationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => MerchandiseNotAsDescribed2AdditionalDocumentationVariant2._(json),
}; }

static const MerchandiseNotAsDescribed2AdditionalDocumentationVariant2 $empty = MerchandiseNotAsDescribed2AdditionalDocumentationVariant2._('');

static const List<MerchandiseNotAsDescribed2AdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MerchandiseNotAsDescribed2AdditionalDocumentationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MerchandiseNotAsDescribed2AdditionalDocumentationVariant2($value)'; } 
 }

@immutable
final class MerchandiseNotAsDescribed2AdditionalDocumentation {
  const MerchandiseNotAsDescribed2AdditionalDocumentation({this.string = const Omittable.absent(),
this.merchandiseNotAsDescribed2AdditionalDocumentationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const MerchandiseNotAsDescribed2AdditionalDocumentation._({required this.rawValue, required this.string,
required this.merchandiseNotAsDescribed2AdditionalDocumentationVariant2,});
  factory MerchandiseNotAsDescribed2AdditionalDocumentation.fromJson(Object? json) => MerchandiseNotAsDescribed2AdditionalDocumentation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
merchandiseNotAsDescribed2AdditionalDocumentationVariant2: parseAnyOfVariant<MerchandiseNotAsDescribed2AdditionalDocumentationVariant2>(json, (value) => MerchandiseNotAsDescribed2AdditionalDocumentationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<MerchandiseNotAsDescribed2AdditionalDocumentationVariant2> merchandiseNotAsDescribed2AdditionalDocumentationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || merchandiseNotAsDescribed2AdditionalDocumentationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (merchandiseNotAsDescribed2AdditionalDocumentationVariant2.isPresent) merchandiseNotAsDescribed2AdditionalDocumentationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is MerchandiseNotAsDescribed2AdditionalDocumentation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'MerchandiseNotAsDescribed2AdditionalDocumentation(${toJson()})';
}
