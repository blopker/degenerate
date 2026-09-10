// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shipping_address_collection_params.dart';@immutable final class PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2 {const PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2 $empty = PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2($value)'; } 
 }
/// Configuration for collecting the customer's shipping address.
@immutable
final class PostPaymentLinksPaymentLinkRequestShippingAddressCollection {
  const PostPaymentLinksPaymentLinkRequestShippingAddressCollection({this.shippingAddressCollectionParams = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestShippingAddressCollection._({required this.rawValue, required this.shippingAddressCollectionParams,
required this.postPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2,});
  factory PostPaymentLinksPaymentLinkRequestShippingAddressCollection.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestShippingAddressCollection._(
    rawValue: Omittable(json),
    shippingAddressCollectionParams: parseAnyOfVariant<ShippingAddressCollectionParams>(json, (value) => ShippingAddressCollectionParams.fromJson(value! as Map<String, dynamic>)),
postPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ShippingAddressCollectionParams> shippingAddressCollectionParams;
final Omittable<PostPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2> postPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => shippingAddressCollectionParams.isPresent || postPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (shippingAddressCollectionParams.isPresent) shippingAddressCollectionParams.value?.toJson(),
if (postPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2.isPresent) postPaymentLinksPaymentLinkRequestShippingAddressCollectionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestShippingAddressCollection && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestShippingAddressCollection(${toJson()})';
}
