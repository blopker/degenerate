// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NotReceivedAdditionalDocumentationVariant2 {const NotReceivedAdditionalDocumentationVariant2._(this.value);

factory NotReceivedAdditionalDocumentationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => NotReceivedAdditionalDocumentationVariant2._(json),
}; }

static const NotReceivedAdditionalDocumentationVariant2 $empty = NotReceivedAdditionalDocumentationVariant2._('');

static const List<NotReceivedAdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is NotReceivedAdditionalDocumentationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'NotReceivedAdditionalDocumentationVariant2($value)'; } 
 }

@immutable
final class NotReceivedAdditionalDocumentation {
  const NotReceivedAdditionalDocumentation({this.string = const Omittable.absent(),
this.notReceivedAdditionalDocumentationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const NotReceivedAdditionalDocumentation._({required this.rawValue, required this.string,
required this.notReceivedAdditionalDocumentationVariant2,});
  factory NotReceivedAdditionalDocumentation.fromJson(Object? json) => NotReceivedAdditionalDocumentation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
notReceivedAdditionalDocumentationVariant2: parseAnyOfVariant<NotReceivedAdditionalDocumentationVariant2>(json, (value) => NotReceivedAdditionalDocumentationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<NotReceivedAdditionalDocumentationVariant2> notReceivedAdditionalDocumentationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || notReceivedAdditionalDocumentationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (notReceivedAdditionalDocumentationVariant2.isPresent) notReceivedAdditionalDocumentationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is NotReceivedAdditionalDocumentation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'NotReceivedAdditionalDocumentation(${toJson()})';
}
