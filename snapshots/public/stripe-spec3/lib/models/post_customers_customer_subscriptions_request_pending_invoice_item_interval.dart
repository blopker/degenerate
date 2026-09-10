// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pending_invoice_item_interval_params.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2 {const PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2 $empty = PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2($value)';}
}
/// Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https://docs.stripe.com/api#create_invoice) for the given subscription at the specified interval.
@immutable
final class PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemInterval {
  const PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemInterval({this.pendingInvoiceItemIntervalParams = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemInterval._({required this.rawValue, required this.pendingInvoiceItemIntervalParams,
required this.postCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2,});
  factory PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemInterval.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemInterval._(
    rawValue: Omittable(json),
    pendingInvoiceItemIntervalParams: parseAnyOfVariant<PendingInvoiceItemIntervalParams>(json, (value) => PendingInvoiceItemIntervalParams.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2>(json, (value) => PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PendingInvoiceItemIntervalParams> pendingInvoiceItemIntervalParams;
final Omittable<PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2> postCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => pendingInvoiceItemIntervalParams.isPresent || postCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (pendingInvoiceItemIntervalParams.isPresent) pendingInvoiceItemIntervalParams.value?.toJson(),
if (postCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2.isPresent) postCustomersCustomerSubscriptionsRequestPendingInvoiceItemIntervalVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemInterval && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemInterval(${toJson()})';
}
