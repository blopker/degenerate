// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam26CaptureMethod {const PaymentMethodOptionsParam26CaptureMethod._(this.value);

factory PaymentMethodOptionsParam26CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam26CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam26CaptureMethod $empty = PaymentMethodOptionsParam26CaptureMethod._('');

static const PaymentMethodOptionsParam26CaptureMethod manual = PaymentMethodOptionsParam26CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam26CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam26CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam26CaptureMethod($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam26 {const PaymentMethodOptionsParam26({this.captureMethod});

factory PaymentMethodOptionsParam26.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam26(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam26CaptureMethod.fromJson(json['capture_method'] as String) : null,
); }

final PaymentMethodOptionsParam26CaptureMethod? captureMethod;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method'}.contains(key)); } 
PaymentMethodOptionsParam26 copyWith({PaymentMethodOptionsParam26CaptureMethod Function()? captureMethod}) { return PaymentMethodOptionsParam26(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam26 &&
          captureMethod == other.captureMethod; } 
@override int get hashCode { return captureMethod.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam26(captureMethod: $captureMethod)'; } 
 }
