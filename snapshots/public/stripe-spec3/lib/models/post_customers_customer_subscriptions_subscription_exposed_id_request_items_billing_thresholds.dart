// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'item_billing_thresholds_param2.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2($value)';}
}

@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds({this.itemBillingThresholdsParam2 = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds._({required this.rawValue, required this.itemBillingThresholdsParam2,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds._(
    rawValue: Omittable(json),
    itemBillingThresholdsParam2: parseAnyOfVariant<ItemBillingThresholdsParam2>(json, (value) => ItemBillingThresholdsParam2.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<ItemBillingThresholdsParam2> itemBillingThresholdsParam2;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => itemBillingThresholdsParam2.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (itemBillingThresholdsParam2.isPresent) itemBillingThresholdsParam2.value?.toJson(),
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestItemsBillingThresholds(${toJson()})';
}
