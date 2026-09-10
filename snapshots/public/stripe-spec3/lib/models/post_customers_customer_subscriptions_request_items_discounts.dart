// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customers_customer_subscriptions_request_items_discounts_variant1.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2 {const PostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2 $empty = PostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2($value)';}
}

@immutable
final class PostCustomersCustomerSubscriptionsRequestItemsDiscounts {
  const PostCustomersCustomerSubscriptionsRequestItemsDiscounts({this.listPostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant1 = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestItemsDiscounts._({required this.rawValue, required this.listPostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant1,
required this.postCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2,});
  factory PostCustomersCustomerSubscriptionsRequestItemsDiscounts.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestItemsDiscounts._(
    rawValue: Omittable(json),
    listPostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant1: parseAnyOfVariant<List<PostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2>(json, (value) => PostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant1>> listPostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant1;
final Omittable<PostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2> postCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant1.isPresent || postCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant1.isPresent) listPostCustomersCustomerSubscriptionsRequestItemsDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2.isPresent) postCustomersCustomerSubscriptionsRequestItemsDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestItemsDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestItemsDiscounts(${toJson()})';
}
