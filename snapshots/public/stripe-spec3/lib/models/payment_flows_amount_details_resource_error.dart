// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The code of the error that occurred when validating the current amount details.
@immutable final class PaymentFlowsAmountDetailsResourceErrorCode {const PaymentFlowsAmountDetailsResourceErrorCode._(this.value);

factory PaymentFlowsAmountDetailsResourceErrorCode.fromJson(String json) { return switch (json) {
  'amount_details_amount_mismatch' => amountDetailsAmountMismatch,
  'amount_details_tax_shipping_discount_greater_than_amount' => amountDetailsTaxShippingDiscountGreaterThanAmount,
  _ => PaymentFlowsAmountDetailsResourceErrorCode._(json),
}; }

static const PaymentFlowsAmountDetailsResourceErrorCode amountDetailsAmountMismatch = PaymentFlowsAmountDetailsResourceErrorCode._('amount_details_amount_mismatch');

static const PaymentFlowsAmountDetailsResourceErrorCode amountDetailsTaxShippingDiscountGreaterThanAmount = PaymentFlowsAmountDetailsResourceErrorCode._('amount_details_tax_shipping_discount_greater_than_amount');

static const List<PaymentFlowsAmountDetailsResourceErrorCode> values = [amountDetailsAmountMismatch, amountDetailsTaxShippingDiscountGreaterThanAmount];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentFlowsAmountDetailsResourceErrorCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentFlowsAmountDetailsResourceErrorCode($value)'; } 
 }
/// 
@immutable final class PaymentFlowsAmountDetailsResourceError {const PaymentFlowsAmountDetailsResourceError({this.code = const Omittable.absent(), this.message = const Omittable.absent(), });

factory PaymentFlowsAmountDetailsResourceError.fromJson(Map<String, dynamic> json) { return PaymentFlowsAmountDetailsResourceError(
  code: json.containsKey('code') ? Omittable(json['code'] != null ? PaymentFlowsAmountDetailsResourceErrorCode.fromJson(json['code'] as String) : null) : const Omittable.absent(),
  message: json.containsKey('message') ? Omittable(json['message'] as String?) : const Omittable.absent(),
); }

/// The code of the error that occurred when validating the current amount details.
final Omittable<PaymentFlowsAmountDetailsResourceErrorCode?> code;

/// A message providing more details about the error.
final Omittable<String?> message;

Map<String, dynamic> toJson() { return {
  if (code.isPresent) 'code': code.value?.toJson(),
  if (message.isPresent) 'message': message.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code', 'message'}.contains(key)); } 
PaymentFlowsAmountDetailsResourceError copyWith({Omittable<PaymentFlowsAmountDetailsResourceErrorCode?>? code, Omittable<String?>? message, }) { return PaymentFlowsAmountDetailsResourceError(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentFlowsAmountDetailsResourceError &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'PaymentFlowsAmountDetailsResourceError(code: $code, message: $message)'; } 
 }
