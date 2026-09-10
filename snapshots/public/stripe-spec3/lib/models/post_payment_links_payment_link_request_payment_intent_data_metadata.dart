// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2 {const PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2 $empty = PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2($value)'; } 
 }

@immutable
final class PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadata {
  const PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadata({this.mapStringString = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadata._({required this.rawValue, required this.mapStringString,
required this.postPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2,});
  factory PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadata.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2> postPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2.isPresent) postPaymentLinksPaymentLinkRequestPaymentIntentDataMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestPaymentIntentDataMetadata(${toJson()})';
}
