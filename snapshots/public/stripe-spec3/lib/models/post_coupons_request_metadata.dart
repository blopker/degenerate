// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCouponsRequestMetadataVariant2 {const PostCouponsRequestMetadataVariant2._(this.value);

factory PostCouponsRequestMetadataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCouponsRequestMetadataVariant2._(json),
};}

static const PostCouponsRequestMetadataVariant2 $empty = PostCouponsRequestMetadataVariant2._('');

static const List<PostCouponsRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCouponsRequestMetadataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCouponsRequestMetadataVariant2($value)';}
}
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
@immutable
final class PostCouponsRequestMetadata {
  const PostCouponsRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postCouponsRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCouponsRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postCouponsRequestMetadataVariant2,});
  factory PostCouponsRequestMetadata.fromJson(Object? json) => PostCouponsRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postCouponsRequestMetadataVariant2: parseAnyOfVariant<PostCouponsRequestMetadataVariant2>(json, (value) => PostCouponsRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostCouponsRequestMetadataVariant2> postCouponsRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postCouponsRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postCouponsRequestMetadataVariant2.isPresent) postCouponsRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCouponsRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCouponsRequestMetadata(${toJson()})';
}
