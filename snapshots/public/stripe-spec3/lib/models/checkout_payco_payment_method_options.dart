// GENERATED CODE - DO NOT MODIFY BY HAND

/// Controls when the funds will be captured from the customer's account.
final class CheckoutPaycoPaymentMethodOptionsCaptureMethod {const CheckoutPaycoPaymentMethodOptionsCaptureMethod._(this.value);

factory CheckoutPaycoPaymentMethodOptionsCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => CheckoutPaycoPaymentMethodOptionsCaptureMethod._(json),
}; }

static const CheckoutPaycoPaymentMethodOptionsCaptureMethod manual = CheckoutPaycoPaymentMethodOptionsCaptureMethod._('manual');

static const List<CheckoutPaycoPaymentMethodOptionsCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CheckoutPaycoPaymentMethodOptionsCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CheckoutPaycoPaymentMethodOptionsCaptureMethod($value)'; } 
 }
/// 
final class CheckoutPaycoPaymentMethodOptions {const CheckoutPaycoPaymentMethodOptions({this.captureMethod});

factory CheckoutPaycoPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return CheckoutPaycoPaymentMethodOptions(
  captureMethod: json['capture_method'] != null ? CheckoutPaycoPaymentMethodOptionsCaptureMethod.fromJson(json['capture_method'] as String) : null,
); }

/// Controls when the funds will be captured from the customer's account.
final CheckoutPaycoPaymentMethodOptionsCaptureMethod? captureMethod;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method'}.contains(key)); } 
CheckoutPaycoPaymentMethodOptions copyWith({CheckoutPaycoPaymentMethodOptionsCaptureMethod Function()? captureMethod}) { return CheckoutPaycoPaymentMethodOptions(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CheckoutPaycoPaymentMethodOptions &&
          captureMethod == other.captureMethod; } 
@override int get hashCode { return captureMethod.hashCode; } 
@override String toString() { return 'CheckoutPaycoPaymentMethodOptions(captureMethod: $captureMethod)'; } 
 }
