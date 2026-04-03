// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam44CaptureMethod {const PaymentMethodOptionsParam44CaptureMethod._(this.value);

factory PaymentMethodOptionsParam44CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam44CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam44CaptureMethod $empty = PaymentMethodOptionsParam44CaptureMethod._('');

static const PaymentMethodOptionsParam44CaptureMethod manual = PaymentMethodOptionsParam44CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam44CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam44CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam44CaptureMethod($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam44 {const PaymentMethodOptionsParam44({this.captureMethod});

factory PaymentMethodOptionsParam44.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam44(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam44CaptureMethod.fromJson(json['capture_method'] as String) : null,
); }

final PaymentMethodOptionsParam44CaptureMethod? captureMethod;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method'}.contains(key)); } 
PaymentMethodOptionsParam44 copyWith({PaymentMethodOptionsParam44CaptureMethod Function()? captureMethod}) { return PaymentMethodOptionsParam44(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam44 &&
          captureMethod == other.captureMethod; } 
@override int get hashCode { return captureMethod.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam44(captureMethod: $captureMethod)'; } 
 }
