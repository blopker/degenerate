// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The AmazonPay dispute type, chargeback or claim
@immutable final class DisputePaymentMethodDetailsAmazonPayDisputeType {const DisputePaymentMethodDetailsAmazonPayDisputeType._(this.value);

factory DisputePaymentMethodDetailsAmazonPayDisputeType.fromJson(String json) { return switch (json) {
  'chargeback' => chargeback,
  'claim' => claim,
  _ => DisputePaymentMethodDetailsAmazonPayDisputeType._(json),
}; }

static const DisputePaymentMethodDetailsAmazonPayDisputeType chargeback = DisputePaymentMethodDetailsAmazonPayDisputeType._('chargeback');

static const DisputePaymentMethodDetailsAmazonPayDisputeType claim = DisputePaymentMethodDetailsAmazonPayDisputeType._('claim');

static const List<DisputePaymentMethodDetailsAmazonPayDisputeType> values = [chargeback, claim];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DisputePaymentMethodDetailsAmazonPayDisputeType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DisputePaymentMethodDetailsAmazonPayDisputeType($value)'; } 
 }
/// 
@immutable final class DisputePaymentMethodDetailsAmazonPay {const DisputePaymentMethodDetailsAmazonPay({this.disputeType});

factory DisputePaymentMethodDetailsAmazonPay.fromJson(Map<String, dynamic> json) { return DisputePaymentMethodDetailsAmazonPay(
  disputeType: json['dispute_type'] != null ? DisputePaymentMethodDetailsAmazonPayDisputeType.fromJson(json['dispute_type'] as String) : null,
); }

/// The AmazonPay dispute type, chargeback or claim
final DisputePaymentMethodDetailsAmazonPayDisputeType? disputeType;

Map<String, dynamic> toJson() { return {
  if (disputeType != null) 'dispute_type': disputeType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'dispute_type'}.contains(key)); } 
DisputePaymentMethodDetailsAmazonPay copyWith({DisputePaymentMethodDetailsAmazonPayDisputeType? Function()? disputeType}) { return DisputePaymentMethodDetailsAmazonPay(
  disputeType: disputeType != null ? disputeType() : this.disputeType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DisputePaymentMethodDetailsAmazonPay &&
          disputeType == other.disputeType; } 
@override int get hashCode { return disputeType.hashCode; } 
@override String toString() { return 'DisputePaymentMethodDetailsAmazonPay(disputeType: $disputeType)'; } 
 }
