// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_details_address11.dart';@immutable final class PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2 {const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2._(this.value);

factory PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2._(json),
}; }

static const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2 $empty = PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2._('');

static const List<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2($value)'; } 
 }

@immutable
final class PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddress {
  const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddress({this.billingDetailsAddress11 = const Omittable.absent(),
this.postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddress._({required this.rawValue, required this.billingDetailsAddress11,
required this.postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2,});
  factory PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddress.fromJson(Object? json) => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddress._(
    rawValue: Omittable(json),
    billingDetailsAddress11: parseAnyOfVariant<BillingDetailsAddress11>(json, (value) => BillingDetailsAddress11.fromJson(value! as Map<String, dynamic>)),
postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2: parseAnyOfVariant<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2>(json, (value) => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingDetailsAddress11> billingDetailsAddress11;
final Omittable<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2> postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingDetailsAddress11.isPresent || postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingDetailsAddress11.isPresent) billingDetailsAddress11.value?.toJson(),
if (postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2.isPresent) postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddress(${toJson()})';
}
