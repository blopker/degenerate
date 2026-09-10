// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NoValidAuthorization2AdditionalDocumentationVariant2 {const NoValidAuthorization2AdditionalDocumentationVariant2._(this.value);

factory NoValidAuthorization2AdditionalDocumentationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => NoValidAuthorization2AdditionalDocumentationVariant2._(json),
};}

static const NoValidAuthorization2AdditionalDocumentationVariant2 $empty = NoValidAuthorization2AdditionalDocumentationVariant2._('');

static const List<NoValidAuthorization2AdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is NoValidAuthorization2AdditionalDocumentationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'NoValidAuthorization2AdditionalDocumentationVariant2($value)';}
}

@immutable
final class NoValidAuthorization2AdditionalDocumentation {
  const NoValidAuthorization2AdditionalDocumentation({this.string = const Omittable.absent(),
this.noValidAuthorization2AdditionalDocumentationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const NoValidAuthorization2AdditionalDocumentation._({required this.rawValue, required this.string,
required this.noValidAuthorization2AdditionalDocumentationVariant2,});
  factory NoValidAuthorization2AdditionalDocumentation.fromJson(Object? json) => NoValidAuthorization2AdditionalDocumentation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
noValidAuthorization2AdditionalDocumentationVariant2: parseAnyOfVariant<NoValidAuthorization2AdditionalDocumentationVariant2>(json, (value) => NoValidAuthorization2AdditionalDocumentationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<NoValidAuthorization2AdditionalDocumentationVariant2> noValidAuthorization2AdditionalDocumentationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || noValidAuthorization2AdditionalDocumentationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (noValidAuthorization2AdditionalDocumentationVariant2.isPresent) noValidAuthorization2AdditionalDocumentationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is NoValidAuthorization2AdditionalDocumentation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'NoValidAuthorization2AdditionalDocumentation(${toJson()})';
}
