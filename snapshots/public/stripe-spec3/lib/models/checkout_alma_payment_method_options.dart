// GENERATED CODE - DO NOT MODIFY BY HAND

/// Controls when the funds will be captured from the customer's account.
final class CheckoutAlmaPaymentMethodOptionsCaptureMethod {const CheckoutAlmaPaymentMethodOptionsCaptureMethod._(this.value);

factory CheckoutAlmaPaymentMethodOptionsCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => CheckoutAlmaPaymentMethodOptionsCaptureMethod._(json),
}; }

static const CheckoutAlmaPaymentMethodOptionsCaptureMethod manual = CheckoutAlmaPaymentMethodOptionsCaptureMethod._('manual');

static const List<CheckoutAlmaPaymentMethodOptionsCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutAlmaPaymentMethodOptionsCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutAlmaPaymentMethodOptionsCaptureMethod($value)'; } 
 }
/// 
final class CheckoutAlmaPaymentMethodOptions {const CheckoutAlmaPaymentMethodOptions({this.captureMethod});

factory CheckoutAlmaPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return CheckoutAlmaPaymentMethodOptions(
  captureMethod: json['capture_method'] != null ? CheckoutAlmaPaymentMethodOptionsCaptureMethod.fromJson(json['capture_method'] as String) : null,
); }

/// Controls when the funds will be captured from the customer's account.
final CheckoutAlmaPaymentMethodOptionsCaptureMethod? captureMethod;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CheckoutAlmaPaymentMethodOptions copyWith({CheckoutAlmaPaymentMethodOptionsCaptureMethod Function()? captureMethod}) { return CheckoutAlmaPaymentMethodOptions(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutAlmaPaymentMethodOptions &&
          captureMethod == other.captureMethod; } 
@override int get hashCode { return captureMethod.hashCode; } 
@override String toString() { return 'CheckoutAlmaPaymentMethodOptions(captureMethod: $captureMethod)'; } 
 }
