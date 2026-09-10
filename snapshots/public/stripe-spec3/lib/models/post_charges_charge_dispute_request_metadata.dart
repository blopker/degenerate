// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostChargesChargeDisputeRequestMetadataVariant2 {const PostChargesChargeDisputeRequestMetadataVariant2._(this.value);

factory PostChargesChargeDisputeRequestMetadataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostChargesChargeDisputeRequestMetadataVariant2._(json),
};}

static const PostChargesChargeDisputeRequestMetadataVariant2 $empty = PostChargesChargeDisputeRequestMetadataVariant2._('');

static const List<PostChargesChargeDisputeRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostChargesChargeDisputeRequestMetadataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostChargesChargeDisputeRequestMetadataVariant2($value)';}
}
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
@immutable
final class PostChargesChargeDisputeRequestMetadata {
  const PostChargesChargeDisputeRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postChargesChargeDisputeRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostChargesChargeDisputeRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postChargesChargeDisputeRequestMetadataVariant2,});
  factory PostChargesChargeDisputeRequestMetadata.fromJson(Object? json) => PostChargesChargeDisputeRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postChargesChargeDisputeRequestMetadataVariant2: parseAnyOfVariant<PostChargesChargeDisputeRequestMetadataVariant2>(json, (value) => PostChargesChargeDisputeRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostChargesChargeDisputeRequestMetadataVariant2> postChargesChargeDisputeRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postChargesChargeDisputeRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postChargesChargeDisputeRequestMetadataVariant2.isPresent) postChargesChargeDisputeRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostChargesChargeDisputeRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostChargesChargeDisputeRequestMetadata(${toJson()})';
}
