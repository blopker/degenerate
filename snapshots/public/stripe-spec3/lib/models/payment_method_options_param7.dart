// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam7CaptureMethod {const PaymentMethodOptionsParam7CaptureMethod._(this.value);

factory PaymentMethodOptionsParam7CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam7CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam7CaptureMethod $empty = PaymentMethodOptionsParam7CaptureMethod._('');

static const PaymentMethodOptionsParam7CaptureMethod manual = PaymentMethodOptionsParam7CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam7CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam7CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam7CaptureMethod($value)'; } 
 }
final class PaymentMethodOptionsParam7 {const PaymentMethodOptionsParam7({this.captureMethod});

factory PaymentMethodOptionsParam7.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam7(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam7CaptureMethod.fromJson(json['capture_method'] as String) : null,
); }

final PaymentMethodOptionsParam7CaptureMethod? captureMethod;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method'}.contains(key)); } 
PaymentMethodOptionsParam7 copyWith({PaymentMethodOptionsParam7CaptureMethod Function()? captureMethod}) { return PaymentMethodOptionsParam7(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam7 &&
          captureMethod == other.captureMethod; } 
@override int get hashCode { return captureMethod.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam7(captureMethod: $captureMethod)'; } 
 }
