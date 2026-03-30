// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam81CaptureMethod {const PaymentMethodOptionsParam81CaptureMethod._(this.value);

factory PaymentMethodOptionsParam81CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam81CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam81CaptureMethod $empty = PaymentMethodOptionsParam81CaptureMethod._('');

static const PaymentMethodOptionsParam81CaptureMethod manual = PaymentMethodOptionsParam81CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam81CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam81CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam81CaptureMethod($value)'; } 
 }
final class PaymentMethodOptionsParam81 {const PaymentMethodOptionsParam81({this.captureMethod});

factory PaymentMethodOptionsParam81.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam81(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam81CaptureMethod.fromJson(json['capture_method'] as String) : null,
); }

final PaymentMethodOptionsParam81CaptureMethod? captureMethod;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method'}.contains(key)); } 
PaymentMethodOptionsParam81 copyWith({PaymentMethodOptionsParam81CaptureMethod Function()? captureMethod}) { return PaymentMethodOptionsParam81(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam81 &&
          captureMethod == other.captureMethod; } 
@override int get hashCode { return captureMethod.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam81(captureMethod: $captureMethod)'; } 
 }
