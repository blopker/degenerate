// GENERATED CODE - DO NOT MODIFY BY HAND

/// Controls when the funds will be captured from the customer's account.
final class PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod {const PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod._(this.value);

factory PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod._(json),
}; }

static const PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod manual = PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod._('manual');

static const List<PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod($value)'; } 
 }
/// 
final class PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptions {const PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptions({this.captureMethod});

factory PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptions(
  captureMethod: json['capture_method'] != null ? PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod.fromJson(json['capture_method'] as String) : null,
); }

/// Controls when the funds will be captured from the customer's account.
final PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod? captureMethod;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method'}.contains(key)); } 
PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptions copyWith({PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod Function()? captureMethod}) { return PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptions(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptions &&
          captureMethod == other.captureMethod; } 
@override int get hashCode { return captureMethod.hashCode; } 
@override String toString() { return 'PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptions(captureMethod: $captureMethod)'; } 
 }
