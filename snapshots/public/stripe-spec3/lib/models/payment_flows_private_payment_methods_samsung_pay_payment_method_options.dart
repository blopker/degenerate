// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Controls when the funds will be captured from the customer's account.
@immutable final class PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod {const PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod._(this.value);

factory PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod._(json),
}; }

static const PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod manual = PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod._('manual');

static const List<PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod($value)'; } 
 }
/// 
@immutable final class PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions {const PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions({this.captureMethod});

factory PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions(
  captureMethod: json['capture_method'] != null ? PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod.fromJson(json['capture_method'] as String) : null,
); }

/// Controls when the funds will be captured from the customer's account.
final PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod? captureMethod;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method'}.contains(key)); } 
PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions copyWith({PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod Function()? captureMethod}) { return PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions &&
          captureMethod == other.captureMethod; } 
@override int get hashCode { return captureMethod.hashCode; } 
@override String toString() { return 'PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions(captureMethod: $captureMethod)'; } 
 }
