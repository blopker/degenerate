// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param34_bank_transfer.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam34FundingType {const PaymentIntentPaymentMethodOptionsParam34FundingType._(this.value);

factory PaymentIntentPaymentMethodOptionsParam34FundingType.fromJson(String json) { return switch (json) {
  'bank_transfer' => bankTransfer,
  _ => PaymentIntentPaymentMethodOptionsParam34FundingType._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam34FundingType bankTransfer = PaymentIntentPaymentMethodOptionsParam34FundingType._('bank_transfer');

static const List<PaymentIntentPaymentMethodOptionsParam34FundingType> values = [bankTransfer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam34FundingType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam34FundingType($value)'; } 
 }
@immutable final class PaymentIntentPaymentMethodOptionsParam34SetupFutureUsage {const PaymentIntentPaymentMethodOptionsParam34SetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParam34SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentIntentPaymentMethodOptionsParam34SetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam34SetupFutureUsage none = PaymentIntentPaymentMethodOptionsParam34SetupFutureUsage._('none');

static const List<PaymentIntentPaymentMethodOptionsParam34SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam34SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam34SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentIntentPaymentMethodOptionsParam34 {const PaymentIntentPaymentMethodOptionsParam34({this.bankTransfer, this.fundingType, this.setupFutureUsage, });

factory PaymentIntentPaymentMethodOptionsParam34.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam34(
  bankTransfer: json['bank_transfer'] != null ? PaymentIntentPaymentMethodOptionsParam34BankTransfer.fromJson(json['bank_transfer'] as Map<String, dynamic>) : null,
  fundingType: json['funding_type'] != null ? PaymentIntentPaymentMethodOptionsParam34FundingType.fromJson(json['funding_type'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParam34SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsParam34BankTransfer? bankTransfer;

final PaymentIntentPaymentMethodOptionsParam34FundingType? fundingType;

final PaymentIntentPaymentMethodOptionsParam34SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (bankTransfer != null) 'bank_transfer': bankTransfer?.toJson(),
  if (fundingType != null) 'funding_type': fundingType?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_transfer', 'funding_type', 'setup_future_usage'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam34 copyWith({PaymentIntentPaymentMethodOptionsParam34BankTransfer Function()? bankTransfer, PaymentIntentPaymentMethodOptionsParam34FundingType Function()? fundingType, PaymentIntentPaymentMethodOptionsParam34SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentIntentPaymentMethodOptionsParam34(
  bankTransfer: bankTransfer != null ? bankTransfer() : this.bankTransfer,
  fundingType: fundingType != null ? fundingType() : this.fundingType,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam34 &&
          bankTransfer == other.bankTransfer &&
          fundingType == other.fundingType &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(bankTransfer, fundingType, setupFutureUsage); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam34(bankTransfer: $bankTransfer, fundingType: $fundingType, setupFutureUsage: $setupFutureUsage)'; } 
 }
