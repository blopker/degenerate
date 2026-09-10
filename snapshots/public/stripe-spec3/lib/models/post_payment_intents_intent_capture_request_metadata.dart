// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentCaptureRequestMetadataVariant2 {const PostPaymentIntentsIntentCaptureRequestMetadataVariant2._(this.value);

factory PostPaymentIntentsIntentCaptureRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentCaptureRequestMetadataVariant2._(json),
}; }

static const PostPaymentIntentsIntentCaptureRequestMetadataVariant2 $empty = PostPaymentIntentsIntentCaptureRequestMetadataVariant2._('');

static const List<PostPaymentIntentsIntentCaptureRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentCaptureRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentCaptureRequestMetadataVariant2($value)'; } 
 }
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
@immutable
final class PostPaymentIntentsIntentCaptureRequestMetadata {
  const PostPaymentIntentsIntentCaptureRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postPaymentIntentsIntentCaptureRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentCaptureRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postPaymentIntentsIntentCaptureRequestMetadataVariant2,});
  factory PostPaymentIntentsIntentCaptureRequestMetadata.fromJson(Object? json) => PostPaymentIntentsIntentCaptureRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postPaymentIntentsIntentCaptureRequestMetadataVariant2: parseAnyOfVariant<PostPaymentIntentsIntentCaptureRequestMetadataVariant2>(json, (value) => PostPaymentIntentsIntentCaptureRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostPaymentIntentsIntentCaptureRequestMetadataVariant2> postPaymentIntentsIntentCaptureRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postPaymentIntentsIntentCaptureRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postPaymentIntentsIntentCaptureRequestMetadataVariant2.isPresent) postPaymentIntentsIntentCaptureRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentCaptureRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentCaptureRequestMetadata(${toJson()})';
}
