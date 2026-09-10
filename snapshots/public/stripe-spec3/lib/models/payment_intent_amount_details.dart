// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_flows_amount_details.dart';import 'payment_flows_amount_details_client.dart';
@immutable
final class PaymentIntentAmountDetails {
  const PaymentIntentAmountDetails({this.paymentFlowsAmountDetails = const Omittable.absent(),
this.paymentFlowsAmountDetailsClient = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentAmountDetails._({required this.rawValue, required this.paymentFlowsAmountDetails,
required this.paymentFlowsAmountDetailsClient,});
  factory PaymentIntentAmountDetails.fromJson(Object? json) => PaymentIntentAmountDetails._(
    rawValue: Omittable(json),
    paymentFlowsAmountDetails: parseAnyOfVariant<PaymentFlowsAmountDetails>(json, (value) => PaymentFlowsAmountDetails.fromJson(value! as Map<String, dynamic>)),
paymentFlowsAmountDetailsClient: parseAnyOfVariant<PaymentFlowsAmountDetailsClient>(json, (value) => PaymentFlowsAmountDetailsClient.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentFlowsAmountDetails> paymentFlowsAmountDetails;
final Omittable<PaymentFlowsAmountDetailsClient> paymentFlowsAmountDetailsClient;

  /// Whether at least one known variant matched.
  bool get isValid => paymentFlowsAmountDetails.isPresent || paymentFlowsAmountDetailsClient.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentFlowsAmountDetails.isPresent) paymentFlowsAmountDetails.value?.toJson(),
if (paymentFlowsAmountDetailsClient.isPresent) paymentFlowsAmountDetailsClient.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentAmountDetails && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentAmountDetails(${toJson()})';
}
