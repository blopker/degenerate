// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2 {const PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2 $empty = PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2($value)'; } 
 }

@immutable
final class PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadata {
  const PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadata({this.mapStringString = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadata._({required this.rawValue, required this.mapStringString,
required this.postPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2,});
  factory PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadata.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2> postPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2.isPresent) postPaymentLinksPaymentLinkRequestSubscriptionDataMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestSubscriptionDataMetadata(${toJson()})';
}
