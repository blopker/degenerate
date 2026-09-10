// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_links_payment_link_request_optional_items_variant1.dart';@immutable final class PostPaymentLinksPaymentLinkRequestOptionalItemsVariant2 {const PostPaymentLinksPaymentLinkRequestOptionalItemsVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestOptionalItemsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestOptionalItemsVariant2._(json),
};}

static const PostPaymentLinksPaymentLinkRequestOptionalItemsVariant2 $empty = PostPaymentLinksPaymentLinkRequestOptionalItemsVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestOptionalItemsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestOptionalItemsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentLinksPaymentLinkRequestOptionalItemsVariant2($value)';}
}
/// A list of optional items the customer can add to their order at checkout. Use this parameter to pass one-time or recurring [Prices](https://docs.stripe.com/api/prices).
/// There is a maximum of 10 optional items allowed on a payment link, and the existing limits on the number of line items allowed on a payment link apply to the combined number of line items and optional items.
/// There is a maximum of 20 combined line items and optional items.
@immutable
final class PostPaymentLinksPaymentLinkRequestOptionalItems {
  const PostPaymentLinksPaymentLinkRequestOptionalItems({this.listPostPaymentLinksPaymentLinkRequestOptionalItemsVariant1 = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestOptionalItemsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestOptionalItems._({required this.rawValue, required this.listPostPaymentLinksPaymentLinkRequestOptionalItemsVariant1,
required this.postPaymentLinksPaymentLinkRequestOptionalItemsVariant2,});
  factory PostPaymentLinksPaymentLinkRequestOptionalItems.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestOptionalItems._(
    rawValue: Omittable(json),
    listPostPaymentLinksPaymentLinkRequestOptionalItemsVariant1: parseAnyOfVariant<List<PostPaymentLinksPaymentLinkRequestOptionalItemsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostPaymentLinksPaymentLinkRequestOptionalItemsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postPaymentLinksPaymentLinkRequestOptionalItemsVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestOptionalItemsVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestOptionalItemsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostPaymentLinksPaymentLinkRequestOptionalItemsVariant1>> listPostPaymentLinksPaymentLinkRequestOptionalItemsVariant1;
final Omittable<PostPaymentLinksPaymentLinkRequestOptionalItemsVariant2> postPaymentLinksPaymentLinkRequestOptionalItemsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostPaymentLinksPaymentLinkRequestOptionalItemsVariant1.isPresent || postPaymentLinksPaymentLinkRequestOptionalItemsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostPaymentLinksPaymentLinkRequestOptionalItemsVariant1.isPresent) listPostPaymentLinksPaymentLinkRequestOptionalItemsVariant1.value?.map((e) => e.toJson()).toList(),
if (postPaymentLinksPaymentLinkRequestOptionalItemsVariant2.isPresent) postPaymentLinksPaymentLinkRequestOptionalItemsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestOptionalItems && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestOptionalItems(${toJson()})';
}
