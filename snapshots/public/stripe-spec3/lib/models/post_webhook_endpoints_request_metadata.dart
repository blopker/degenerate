// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostWebhookEndpointsRequestMetadataVariant2 {const PostWebhookEndpointsRequestMetadataVariant2._(this.value);

factory PostWebhookEndpointsRequestMetadataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostWebhookEndpointsRequestMetadataVariant2._(json),
};}

static const PostWebhookEndpointsRequestMetadataVariant2 $empty = PostWebhookEndpointsRequestMetadataVariant2._('');

static const List<PostWebhookEndpointsRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostWebhookEndpointsRequestMetadataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostWebhookEndpointsRequestMetadataVariant2($value)';}
}
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
@immutable
final class PostWebhookEndpointsRequestMetadata {
  const PostWebhookEndpointsRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postWebhookEndpointsRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostWebhookEndpointsRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postWebhookEndpointsRequestMetadataVariant2,});
  factory PostWebhookEndpointsRequestMetadata.fromJson(Object? json) => PostWebhookEndpointsRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postWebhookEndpointsRequestMetadataVariant2: parseAnyOfVariant<PostWebhookEndpointsRequestMetadataVariant2>(json, (value) => PostWebhookEndpointsRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostWebhookEndpointsRequestMetadataVariant2> postWebhookEndpointsRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postWebhookEndpointsRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postWebhookEndpointsRequestMetadataVariant2.isPresent) postWebhookEndpointsRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostWebhookEndpointsRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostWebhookEndpointsRequestMetadata(${toJson()})';
}
