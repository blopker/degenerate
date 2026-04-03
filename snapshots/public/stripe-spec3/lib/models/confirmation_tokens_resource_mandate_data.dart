// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'confirmation_tokens_resource_mandate_data_resource_customer_acceptance.dart';/// Data used for generating a Mandate.
@immutable final class ConfirmationTokensResourceMandateData {const ConfirmationTokensResourceMandateData({required this.customerAcceptance});

factory ConfirmationTokensResourceMandateData.fromJson(Map<String, dynamic> json) { return ConfirmationTokensResourceMandateData(
  customerAcceptance: ConfirmationTokensResourceMandateDataResourceCustomerAcceptance.fromJson(json['customer_acceptance'] as Map<String, dynamic>),
); }

final ConfirmationTokensResourceMandateDataResourceCustomerAcceptance customerAcceptance;

Map<String, dynamic> toJson() { return {
  'customer_acceptance': customerAcceptance.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('customer_acceptance'); } 
ConfirmationTokensResourceMandateData copyWith({ConfirmationTokensResourceMandateDataResourceCustomerAcceptance? customerAcceptance}) { return ConfirmationTokensResourceMandateData(
  customerAcceptance: customerAcceptance ?? this.customerAcceptance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConfirmationTokensResourceMandateData &&
          customerAcceptance == other.customerAcceptance; } 
@override int get hashCode { return customerAcceptance.hashCode; } 
@override String toString() { return 'ConfirmationTokensResourceMandateData(customerAcceptance: $customerAcceptance)'; } 
 }
