// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Controls when the funds will be captured from the customer's account.
@immutable final class PaymentMethodOptionsBillieCaptureMethod {const PaymentMethodOptionsBillieCaptureMethod._(this.value);

factory PaymentMethodOptionsBillieCaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  _ => PaymentMethodOptionsBillieCaptureMethod._(json),
}; }

static const PaymentMethodOptionsBillieCaptureMethod manual = PaymentMethodOptionsBillieCaptureMethod._('manual');

static const List<PaymentMethodOptionsBillieCaptureMethod> values = [manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsBillieCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsBillieCaptureMethod($value)'; } 
 }
/// 
@immutable final class PaymentMethodOptionsBillie {const PaymentMethodOptionsBillie({this.captureMethod});

factory PaymentMethodOptionsBillie.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsBillie(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsBillieCaptureMethod.fromJson(json['capture_method'] as String) : null,
); }

/// Controls when the funds will be captured from the customer's account.
final PaymentMethodOptionsBillieCaptureMethod? captureMethod;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method'}.contains(key)); } 
PaymentMethodOptionsBillie copyWith({PaymentMethodOptionsBillieCaptureMethod Function()? captureMethod}) { return PaymentMethodOptionsBillie(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsBillie &&
          captureMethod == other.captureMethod; } 
@override int get hashCode { return captureMethod.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsBillie(captureMethod: $captureMethod)'; } 
 }
