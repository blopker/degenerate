// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NoValidAuthorizationAdditionalDocumentationVariant2 {const NoValidAuthorizationAdditionalDocumentationVariant2._(this.value);

factory NoValidAuthorizationAdditionalDocumentationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => NoValidAuthorizationAdditionalDocumentationVariant2._(json),
};}

static const NoValidAuthorizationAdditionalDocumentationVariant2 $empty = NoValidAuthorizationAdditionalDocumentationVariant2._('');

static const List<NoValidAuthorizationAdditionalDocumentationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is NoValidAuthorizationAdditionalDocumentationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'NoValidAuthorizationAdditionalDocumentationVariant2($value)';}
}

@immutable
final class NoValidAuthorizationAdditionalDocumentation {
  const NoValidAuthorizationAdditionalDocumentation({this.string = const Omittable.absent(),
this.noValidAuthorizationAdditionalDocumentationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const NoValidAuthorizationAdditionalDocumentation._({required this.rawValue, required this.string,
required this.noValidAuthorizationAdditionalDocumentationVariant2,});
  factory NoValidAuthorizationAdditionalDocumentation.fromJson(Object? json) => NoValidAuthorizationAdditionalDocumentation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
noValidAuthorizationAdditionalDocumentationVariant2: parseAnyOfVariant<NoValidAuthorizationAdditionalDocumentationVariant2>(json, (value) => NoValidAuthorizationAdditionalDocumentationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<NoValidAuthorizationAdditionalDocumentationVariant2> noValidAuthorizationAdditionalDocumentationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || noValidAuthorizationAdditionalDocumentationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (noValidAuthorizationAdditionalDocumentationVariant2.isPresent) noValidAuthorizationAdditionalDocumentationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is NoValidAuthorizationAdditionalDocumentation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'NoValidAuthorizationAdditionalDocumentation(${toJson()})';
}
