// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPersonsPersonRequestMetadataVariant2 {const PostAccountsAccountPersonsPersonRequestMetadataVariant2._(this.value);

factory PostAccountsAccountPersonsPersonRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsPersonRequestMetadataVariant2._(json),
}; }

static const PostAccountsAccountPersonsPersonRequestMetadataVariant2 $empty = PostAccountsAccountPersonsPersonRequestMetadataVariant2._('');

static const List<PostAccountsAccountPersonsPersonRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPersonsPersonRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsPersonRequestMetadataVariant2($value)'; } 
 }
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
@immutable
final class PostAccountsAccountPersonsPersonRequestMetadata {
  const PostAccountsAccountPersonsPersonRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postAccountsAccountPersonsPersonRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPersonsPersonRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postAccountsAccountPersonsPersonRequestMetadataVariant2,});
  factory PostAccountsAccountPersonsPersonRequestMetadata.fromJson(Object? json) => PostAccountsAccountPersonsPersonRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postAccountsAccountPersonsPersonRequestMetadataVariant2: parseAnyOfVariant<PostAccountsAccountPersonsPersonRequestMetadataVariant2>(json, (value) => PostAccountsAccountPersonsPersonRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostAccountsAccountPersonsPersonRequestMetadataVariant2> postAccountsAccountPersonsPersonRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postAccountsAccountPersonsPersonRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postAccountsAccountPersonsPersonRequestMetadataVariant2.isPresent) postAccountsAccountPersonsPersonRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPersonsPersonRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPersonsPersonRequestMetadata(${toJson()})';
}
