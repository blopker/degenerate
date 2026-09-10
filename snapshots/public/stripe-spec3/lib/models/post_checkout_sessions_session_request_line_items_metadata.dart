// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2 {const PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2._(this.value);

factory PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2._(json),
}; }

static const PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2 $empty = PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2._('');

static const List<PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2($value)'; } 
 }

@immutable
final class PostCheckoutSessionsSessionRequestLineItemsMetadata {
  const PostCheckoutSessionsSessionRequestLineItemsMetadata({this.mapStringString = const Omittable.absent(),
this.postCheckoutSessionsSessionRequestLineItemsMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsSessionRequestLineItemsMetadata._({required this.rawValue, required this.mapStringString,
required this.postCheckoutSessionsSessionRequestLineItemsMetadataVariant2,});
  factory PostCheckoutSessionsSessionRequestLineItemsMetadata.fromJson(Object? json) => PostCheckoutSessionsSessionRequestLineItemsMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postCheckoutSessionsSessionRequestLineItemsMetadataVariant2: parseAnyOfVariant<PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2>(json, (value) => PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostCheckoutSessionsSessionRequestLineItemsMetadataVariant2> postCheckoutSessionsSessionRequestLineItemsMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postCheckoutSessionsSessionRequestLineItemsMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postCheckoutSessionsSessionRequestLineItemsMetadataVariant2.isPresent) postCheckoutSessionsSessionRequestLineItemsMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsSessionRequestLineItemsMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsSessionRequestLineItemsMetadata(${toJson()})';
}
