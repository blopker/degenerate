// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam69CaptureMethod {const PaymentMethodOptionsParam69CaptureMethod._(this.value);

factory PaymentMethodOptionsParam69CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam69CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam69CaptureMethod $empty = PaymentMethodOptionsParam69CaptureMethod._('');

static const PaymentMethodOptionsParam69CaptureMethod manual = PaymentMethodOptionsParam69CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam69CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam69CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam69CaptureMethod($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam69 {const PaymentMethodOptionsParam69({this.captureMethod});

factory PaymentMethodOptionsParam69.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam69(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam69CaptureMethod.fromJson(json['capture_method'] as String) : null,
); }

final PaymentMethodOptionsParam69CaptureMethod? captureMethod;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method'}.contains(key)); } 
PaymentMethodOptionsParam69 copyWith({PaymentMethodOptionsParam69CaptureMethod Function()? captureMethod}) { return PaymentMethodOptionsParam69(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam69 &&
          captureMethod == other.captureMethod; } 
@override int get hashCode { return captureMethod.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam69(captureMethod: $captureMethod)'; } 
 }
