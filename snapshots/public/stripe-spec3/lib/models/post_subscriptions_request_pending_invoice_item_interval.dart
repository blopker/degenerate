// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pending_invoice_item_interval_params3.dart';@immutable final class PostSubscriptionsRequestPendingInvoiceItemIntervalVariant2 {const PostSubscriptionsRequestPendingInvoiceItemIntervalVariant2._(this.value);

factory PostSubscriptionsRequestPendingInvoiceItemIntervalVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestPendingInvoiceItemIntervalVariant2._(json),
}; }

static const PostSubscriptionsRequestPendingInvoiceItemIntervalVariant2 $empty = PostSubscriptionsRequestPendingInvoiceItemIntervalVariant2._('');

static const List<PostSubscriptionsRequestPendingInvoiceItemIntervalVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsRequestPendingInvoiceItemIntervalVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsRequestPendingInvoiceItemIntervalVariant2($value)'; } 
 }
/// Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https://docs.stripe.com/api#create_invoice) for the given subscription at the specified interval.
@immutable
final class PostSubscriptionsRequestPendingInvoiceItemInterval {
  const PostSubscriptionsRequestPendingInvoiceItemInterval({this.pendingInvoiceItemIntervalParams3 = const Omittable.absent(),
this.postSubscriptionsRequestPendingInvoiceItemIntervalVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestPendingInvoiceItemInterval._({required this.rawValue, required this.pendingInvoiceItemIntervalParams3,
required this.postSubscriptionsRequestPendingInvoiceItemIntervalVariant2,});
  factory PostSubscriptionsRequestPendingInvoiceItemInterval.fromJson(Object? json) => PostSubscriptionsRequestPendingInvoiceItemInterval._(
    rawValue: Omittable(json),
    pendingInvoiceItemIntervalParams3: parseAnyOfVariant<PendingInvoiceItemIntervalParams3>(json, (value) => PendingInvoiceItemIntervalParams3.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsRequestPendingInvoiceItemIntervalVariant2: parseAnyOfVariant<PostSubscriptionsRequestPendingInvoiceItemIntervalVariant2>(json, (value) => PostSubscriptionsRequestPendingInvoiceItemIntervalVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PendingInvoiceItemIntervalParams3> pendingInvoiceItemIntervalParams3;
final Omittable<PostSubscriptionsRequestPendingInvoiceItemIntervalVariant2> postSubscriptionsRequestPendingInvoiceItemIntervalVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => pendingInvoiceItemIntervalParams3.isPresent || postSubscriptionsRequestPendingInvoiceItemIntervalVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (pendingInvoiceItemIntervalParams3.isPresent) pendingInvoiceItemIntervalParams3.value?.toJson(),
if (postSubscriptionsRequestPendingInvoiceItemIntervalVariant2.isPresent) postSubscriptionsRequestPendingInvoiceItemIntervalVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestPendingInvoiceItemInterval && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestPendingInvoiceItemInterval(${toJson()})';
}
