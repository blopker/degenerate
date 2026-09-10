// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestIndividualMetadataVariant2 {const PostAccountsRequestIndividualMetadataVariant2._(this.value);

factory PostAccountsRequestIndividualMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsRequestIndividualMetadataVariant2._(json),
}; }

static const PostAccountsRequestIndividualMetadataVariant2 $empty = PostAccountsRequestIndividualMetadataVariant2._('');

static const List<PostAccountsRequestIndividualMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsRequestIndividualMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsRequestIndividualMetadataVariant2($value)'; } 
 }

@immutable
final class PostAccountsRequestIndividualMetadata {
  const PostAccountsRequestIndividualMetadata({this.mapStringString = const Omittable.absent(),
this.postAccountsRequestIndividualMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsRequestIndividualMetadata._({required this.rawValue, required this.mapStringString,
required this.postAccountsRequestIndividualMetadataVariant2,});
  factory PostAccountsRequestIndividualMetadata.fromJson(Object? json) => PostAccountsRequestIndividualMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postAccountsRequestIndividualMetadataVariant2: parseAnyOfVariant<PostAccountsRequestIndividualMetadataVariant2>(json, (value) => PostAccountsRequestIndividualMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostAccountsRequestIndividualMetadataVariant2> postAccountsRequestIndividualMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postAccountsRequestIndividualMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postAccountsRequestIndividualMetadataVariant2.isPresent) postAccountsRequestIndividualMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsRequestIndividualMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsRequestIndividualMetadata(${toJson()})';
}
