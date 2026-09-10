// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTokensRequestPersonMetadataVariant2 {const PostTokensRequestPersonMetadataVariant2._(this.value);

factory PostTokensRequestPersonMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestPersonMetadataVariant2._(json),
}; }

static const PostTokensRequestPersonMetadataVariant2 $empty = PostTokensRequestPersonMetadataVariant2._('');

static const List<PostTokensRequestPersonMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestPersonMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestPersonMetadataVariant2($value)'; } 
 }

@immutable
final class PostTokensRequestPersonMetadata {
  const PostTokensRequestPersonMetadata({this.mapStringString = const Omittable.absent(),
this.postTokensRequestPersonMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTokensRequestPersonMetadata._({required this.rawValue, required this.mapStringString,
required this.postTokensRequestPersonMetadataVariant2,});
  factory PostTokensRequestPersonMetadata.fromJson(Object? json) => PostTokensRequestPersonMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postTokensRequestPersonMetadataVariant2: parseAnyOfVariant<PostTokensRequestPersonMetadataVariant2>(json, (value) => PostTokensRequestPersonMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostTokensRequestPersonMetadataVariant2> postTokensRequestPersonMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postTokensRequestPersonMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postTokensRequestPersonMetadataVariant2.isPresent) postTokensRequestPersonMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTokensRequestPersonMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTokensRequestPersonMetadata(${toJson()})';
}
