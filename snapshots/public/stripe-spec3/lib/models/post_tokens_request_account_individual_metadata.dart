// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTokensRequestAccountIndividualMetadataVariant2 {const PostTokensRequestAccountIndividualMetadataVariant2._(this.value);

factory PostTokensRequestAccountIndividualMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestAccountIndividualMetadataVariant2._(json),
}; }

static const PostTokensRequestAccountIndividualMetadataVariant2 $empty = PostTokensRequestAccountIndividualMetadataVariant2._('');

static const List<PostTokensRequestAccountIndividualMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestAccountIndividualMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestAccountIndividualMetadataVariant2($value)'; } 
 }

@immutable
final class PostTokensRequestAccountIndividualMetadata {
  const PostTokensRequestAccountIndividualMetadata({this.mapStringString = const Omittable.absent(),
this.postTokensRequestAccountIndividualMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTokensRequestAccountIndividualMetadata._({required this.rawValue, required this.mapStringString,
required this.postTokensRequestAccountIndividualMetadataVariant2,});
  factory PostTokensRequestAccountIndividualMetadata.fromJson(Object? json) => PostTokensRequestAccountIndividualMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postTokensRequestAccountIndividualMetadataVariant2: parseAnyOfVariant<PostTokensRequestAccountIndividualMetadataVariant2>(json, (value) => PostTokensRequestAccountIndividualMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostTokensRequestAccountIndividualMetadataVariant2> postTokensRequestAccountIndividualMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postTokensRequestAccountIndividualMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postTokensRequestAccountIndividualMetadataVariant2.isPresent) postTokensRequestAccountIndividualMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTokensRequestAccountIndividualMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTokensRequestAccountIndividualMetadata(${toJson()})';
}
