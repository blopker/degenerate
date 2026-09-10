// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2 {const PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2._(this.value);

factory PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2._(json),
};}

static const PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2 $empty = PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2._('');

static const List<PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2($value)';}
}
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
@immutable
final class PostWebhookEndpointsWebhookEndpointRequestMetadata {
  const PostWebhookEndpointsWebhookEndpointRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postWebhookEndpointsWebhookEndpointRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostWebhookEndpointsWebhookEndpointRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postWebhookEndpointsWebhookEndpointRequestMetadataVariant2,});
  factory PostWebhookEndpointsWebhookEndpointRequestMetadata.fromJson(Object? json) => PostWebhookEndpointsWebhookEndpointRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postWebhookEndpointsWebhookEndpointRequestMetadataVariant2: parseAnyOfVariant<PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2>(json, (value) => PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostWebhookEndpointsWebhookEndpointRequestMetadataVariant2> postWebhookEndpointsWebhookEndpointRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postWebhookEndpointsWebhookEndpointRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postWebhookEndpointsWebhookEndpointRequestMetadataVariant2.isPresent) postWebhookEndpointsWebhookEndpointRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostWebhookEndpointsWebhookEndpointRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostWebhookEndpointsWebhookEndpointRequestMetadata(${toJson()})';
}
