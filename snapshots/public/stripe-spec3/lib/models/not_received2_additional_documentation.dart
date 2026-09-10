// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NotReceived2AdditionalDocumentationVariant2 {const NotReceived2AdditionalDocumentationVariant2._(this.value);

factory NotReceived2AdditionalDocumentationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => NotReceived2AdditionalDocumentationVariant2._(json),
};}

static const NotReceived2AdditionalDocumentationVariant2 $empty = NotReceived2AdditionalDocumentationVariant2._('');

static const List<NotReceived2AdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is NotReceived2AdditionalDocumentationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'NotReceived2AdditionalDocumentationVariant2($value)';}
}

@immutable
final class NotReceived2AdditionalDocumentation {
  const NotReceived2AdditionalDocumentation({this.string = const Omittable.absent(),
this.notReceived2AdditionalDocumentationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const NotReceived2AdditionalDocumentation._({required this.rawValue, required this.string,
required this.notReceived2AdditionalDocumentationVariant2,});
  factory NotReceived2AdditionalDocumentation.fromJson(Object? json) => NotReceived2AdditionalDocumentation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
notReceived2AdditionalDocumentationVariant2: parseAnyOfVariant<NotReceived2AdditionalDocumentationVariant2>(json, (value) => NotReceived2AdditionalDocumentationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<NotReceived2AdditionalDocumentationVariant2> notReceived2AdditionalDocumentationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || notReceived2AdditionalDocumentationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (notReceived2AdditionalDocumentationVariant2.isPresent) notReceived2AdditionalDocumentationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is NotReceived2AdditionalDocumentation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'NotReceived2AdditionalDocumentation(${toJson()})';
}
