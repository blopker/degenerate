// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingDisputesDisputeRequestMetadataVariant2 {const PostIssuingDisputesDisputeRequestMetadataVariant2._(this.value);

factory PostIssuingDisputesDisputeRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesDisputeRequestMetadataVariant2._(json),
}; }

static const PostIssuingDisputesDisputeRequestMetadataVariant2 $empty = PostIssuingDisputesDisputeRequestMetadataVariant2._('');

static const List<PostIssuingDisputesDisputeRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesDisputeRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesDisputeRequestMetadataVariant2($value)'; } 
 }
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
@immutable
final class PostIssuingDisputesDisputeRequestMetadata {
  const PostIssuingDisputesDisputeRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postIssuingDisputesDisputeRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesDisputeRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postIssuingDisputesDisputeRequestMetadataVariant2,});
  factory PostIssuingDisputesDisputeRequestMetadata.fromJson(Object? json) => PostIssuingDisputesDisputeRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postIssuingDisputesDisputeRequestMetadataVariant2: parseAnyOfVariant<PostIssuingDisputesDisputeRequestMetadataVariant2>(json, (value) => PostIssuingDisputesDisputeRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostIssuingDisputesDisputeRequestMetadataVariant2> postIssuingDisputesDisputeRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postIssuingDisputesDisputeRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postIssuingDisputesDisputeRequestMetadataVariant2.isPresent) postIssuingDisputesDisputeRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesDisputeRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesDisputeRequestMetadata(${toJson()})';
}
