// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pending_invoice_item_interval_params4.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2($value)'; } 
 }
/// Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https://docs.stripe.com/api#create_invoice) for the given subscription at the specified interval.
@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemInterval {
  const PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemInterval({this.pendingInvoiceItemIntervalParams4 = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemInterval._({required this.rawValue, required this.pendingInvoiceItemIntervalParams4,
required this.postSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemInterval.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemInterval._(
    rawValue: Omittable(json),
    pendingInvoiceItemIntervalParams4: parseAnyOfVariant<PendingInvoiceItemIntervalParams4>(json, (value) => PendingInvoiceItemIntervalParams4.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PendingInvoiceItemIntervalParams4> pendingInvoiceItemIntervalParams4;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2> postSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => pendingInvoiceItemIntervalParams4.isPresent || postSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (pendingInvoiceItemIntervalParams4.isPresent) pendingInvoiceItemIntervalParams4.value?.toJson(),
if (postSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemIntervalVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemInterval && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestPendingInvoiceItemInterval(${toJson()})';
}
