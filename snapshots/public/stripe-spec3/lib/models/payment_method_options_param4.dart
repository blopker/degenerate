// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam4CaptureMethod {const PaymentMethodOptionsParam4CaptureMethod._(this.value);

factory PaymentMethodOptionsParam4CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam4CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam4CaptureMethod $empty = PaymentMethodOptionsParam4CaptureMethod._('');

static const PaymentMethodOptionsParam4CaptureMethod manual = PaymentMethodOptionsParam4CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam4CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam4CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam4CaptureMethod($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam4 {const PaymentMethodOptionsParam4({this.captureMethod});

factory PaymentMethodOptionsParam4.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam4(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam4CaptureMethod.fromJson(json['capture_method'] as String) : null,
); }

final PaymentMethodOptionsParam4CaptureMethod? captureMethod;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method'}.contains(key)); } 
PaymentMethodOptionsParam4 copyWith({PaymentMethodOptionsParam4CaptureMethod Function()? captureMethod}) { return PaymentMethodOptionsParam4(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam4 &&
          captureMethod == other.captureMethod; } 
@override int get hashCode { return captureMethod.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam4(captureMethod: $captureMethod)'; } 
 }
