// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxRatesTaxRateRequestMetadataVariant2 {const PostTaxRatesTaxRateRequestMetadataVariant2._(this.value);

factory PostTaxRatesTaxRateRequestMetadataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTaxRatesTaxRateRequestMetadataVariant2._(json),
};}

static const PostTaxRatesTaxRateRequestMetadataVariant2 $empty = PostTaxRatesTaxRateRequestMetadataVariant2._('');

static const List<PostTaxRatesTaxRateRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTaxRatesTaxRateRequestMetadataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTaxRatesTaxRateRequestMetadataVariant2($value)';}
}
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
@immutable
final class PostTaxRatesTaxRateRequestMetadata {
  const PostTaxRatesTaxRateRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postTaxRatesTaxRateRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTaxRatesTaxRateRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postTaxRatesTaxRateRequestMetadataVariant2,});
  factory PostTaxRatesTaxRateRequestMetadata.fromJson(Object? json) => PostTaxRatesTaxRateRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postTaxRatesTaxRateRequestMetadataVariant2: parseAnyOfVariant<PostTaxRatesTaxRateRequestMetadataVariant2>(json, (value) => PostTaxRatesTaxRateRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostTaxRatesTaxRateRequestMetadataVariant2> postTaxRatesTaxRateRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postTaxRatesTaxRateRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postTaxRatesTaxRateRequestMetadataVariant2.isPresent) postTaxRatesTaxRateRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTaxRatesTaxRateRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTaxRatesTaxRateRequestMetadata(${toJson()})';
}
