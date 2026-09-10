// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPeoplePersonRequestMetadataVariant2 {const PostAccountsAccountPeoplePersonRequestMetadataVariant2._(this.value);

factory PostAccountsAccountPeoplePersonRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeoplePersonRequestMetadataVariant2._(json),
}; }

static const PostAccountsAccountPeoplePersonRequestMetadataVariant2 $empty = PostAccountsAccountPeoplePersonRequestMetadataVariant2._('');

static const List<PostAccountsAccountPeoplePersonRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeoplePersonRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestMetadataVariant2($value)'; } 
 }
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
@immutable
final class PostAccountsAccountPeoplePersonRequestMetadata {
  const PostAccountsAccountPeoplePersonRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postAccountsAccountPeoplePersonRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPeoplePersonRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postAccountsAccountPeoplePersonRequestMetadataVariant2,});
  factory PostAccountsAccountPeoplePersonRequestMetadata.fromJson(Object? json) => PostAccountsAccountPeoplePersonRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postAccountsAccountPeoplePersonRequestMetadataVariant2: parseAnyOfVariant<PostAccountsAccountPeoplePersonRequestMetadataVariant2>(json, (value) => PostAccountsAccountPeoplePersonRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostAccountsAccountPeoplePersonRequestMetadataVariant2> postAccountsAccountPeoplePersonRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postAccountsAccountPeoplePersonRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postAccountsAccountPeoplePersonRequestMetadataVariant2.isPresent) postAccountsAccountPeoplePersonRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPeoplePersonRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPeoplePersonRequestMetadata(${toJson()})';
}
