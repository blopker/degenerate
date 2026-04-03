// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam107CaptureMethod {const PaymentMethodOptionsParam107CaptureMethod._(this.value);

factory PaymentMethodOptionsParam107CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam107CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam107CaptureMethod $empty = PaymentMethodOptionsParam107CaptureMethod._('');

static const PaymentMethodOptionsParam107CaptureMethod manual = PaymentMethodOptionsParam107CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam107CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam107CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam107CaptureMethod($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam107 {const PaymentMethodOptionsParam107({this.captureMethod});

factory PaymentMethodOptionsParam107.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam107(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam107CaptureMethod.fromJson(json['capture_method'] as String) : null,
); }

final PaymentMethodOptionsParam107CaptureMethod? captureMethod;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method'}.contains(key)); } 
PaymentMethodOptionsParam107 copyWith({PaymentMethodOptionsParam107CaptureMethod Function()? captureMethod}) { return PaymentMethodOptionsParam107(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam107 &&
          captureMethod == other.captureMethod; } 
@override int get hashCode { return captureMethod.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam107(captureMethod: $captureMethod)'; } 
 }
