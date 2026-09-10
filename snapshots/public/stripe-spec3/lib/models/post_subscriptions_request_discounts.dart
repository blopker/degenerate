// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscriptions_request_discounts_variant1.dart';@immutable final class PostSubscriptionsRequestDiscountsVariant2 {const PostSubscriptionsRequestDiscountsVariant2._(this.value);

factory PostSubscriptionsRequestDiscountsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestDiscountsVariant2._(json),
};}

static const PostSubscriptionsRequestDiscountsVariant2 $empty = PostSubscriptionsRequestDiscountsVariant2._('');

static const List<PostSubscriptionsRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsRequestDiscountsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsRequestDiscountsVariant2($value)';}
}
/// The coupons to redeem into discounts for the subscription. If not specified or empty, inherits the discount from the subscription's customer.
@immutable
final class PostSubscriptionsRequestDiscounts {
  const PostSubscriptionsRequestDiscounts({this.listPostSubscriptionsRequestDiscountsVariant1 = const Omittable.absent(),
this.postSubscriptionsRequestDiscountsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestDiscounts._({required this.rawValue, required this.listPostSubscriptionsRequestDiscountsVariant1,
required this.postSubscriptionsRequestDiscountsVariant2,});
  factory PostSubscriptionsRequestDiscounts.fromJson(Object? json) => PostSubscriptionsRequestDiscounts._(
    rawValue: Omittable(json),
    listPostSubscriptionsRequestDiscountsVariant1: parseAnyOfVariant<List<PostSubscriptionsRequestDiscountsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostSubscriptionsRequestDiscountsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postSubscriptionsRequestDiscountsVariant2: parseAnyOfVariant<PostSubscriptionsRequestDiscountsVariant2>(json, (value) => PostSubscriptionsRequestDiscountsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostSubscriptionsRequestDiscountsVariant1>> listPostSubscriptionsRequestDiscountsVariant1;
final Omittable<PostSubscriptionsRequestDiscountsVariant2> postSubscriptionsRequestDiscountsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostSubscriptionsRequestDiscountsVariant1.isPresent || postSubscriptionsRequestDiscountsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostSubscriptionsRequestDiscountsVariant1.isPresent) listPostSubscriptionsRequestDiscountsVariant1.value?.map((e) => e.toJson()).toList(),
if (postSubscriptionsRequestDiscountsVariant2.isPresent) postSubscriptionsRequestDiscountsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestDiscounts(${toJson()})';
}
