// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam78CaptureMethod {const PaymentMethodOptionsParam78CaptureMethod._(this.value);

factory PaymentMethodOptionsParam78CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam78CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam78CaptureMethod $empty = PaymentMethodOptionsParam78CaptureMethod._('');

static const PaymentMethodOptionsParam78CaptureMethod manual = PaymentMethodOptionsParam78CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam78CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam78CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam78CaptureMethod($value)'; } 
 }
final class PaymentMethodOptionsParam78 {const PaymentMethodOptionsParam78({this.captureMethod});

factory PaymentMethodOptionsParam78.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam78(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam78CaptureMethod.fromJson(json['capture_method'] as String) : null,
); }

final PaymentMethodOptionsParam78CaptureMethod? captureMethod;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsParam78 copyWith({PaymentMethodOptionsParam78CaptureMethod Function()? captureMethod}) { return PaymentMethodOptionsParam78(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam78 &&
          captureMethod == other.captureMethod; } 
@override int get hashCode { return captureMethod.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam78(captureMethod: $captureMethod)'; } 
 }
