// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscriptions_subscription_exposed_id_request_discounts_variant1.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2._(json),
};}

static const PostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2($value)';}
}
/// The coupons to redeem into discounts for the subscription. If not specified or empty, inherits the discount from the subscription's customer.
@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestDiscounts {
  const PostSubscriptionsSubscriptionExposedIdRequestDiscounts({this.listPostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1 = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestDiscounts._({required this.rawValue, required this.listPostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1,
required this.postSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestDiscounts.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestDiscounts._(
    rawValue: Omittable(json),
    listPostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1: parseAnyOfVariant<List<PostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1>> listPostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2> postSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1.isPresent || postSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1.isPresent) listPostSubscriptionsSubscriptionExposedIdRequestDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestDiscounts(${toJson()})';
}
