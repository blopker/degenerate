// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pending_invoice_item_interval_params2.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2($value)'; } 
 }
/// Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https://docs.stripe.com/api#create_invoice) for the given subscription at the specified interval.
@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemInterval {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemInterval({this.pendingInvoiceItemIntervalParams2 = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemInterval._({required this.rawValue, required this.pendingInvoiceItemIntervalParams2,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemInterval.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemInterval._(
    rawValue: Omittable(json),
    pendingInvoiceItemIntervalParams2: parseAnyOfVariant<PendingInvoiceItemIntervalParams2>(json, (value) => PendingInvoiceItemIntervalParams2.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PendingInvoiceItemIntervalParams2> pendingInvoiceItemIntervalParams2;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => pendingInvoiceItemIntervalParams2.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (pendingInvoiceItemIntervalParams2.isPresent) pendingInvoiceItemIntervalParams2.value?.toJson(),
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemInterval && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemInterval(${toJson()})';
}
