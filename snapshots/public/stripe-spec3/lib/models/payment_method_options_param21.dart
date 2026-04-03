// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam21CaptureMethod {const PaymentMethodOptionsParam21CaptureMethod._(this.value);

factory PaymentMethodOptionsParam21CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam21CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam21CaptureMethod $empty = PaymentMethodOptionsParam21CaptureMethod._('');

static const PaymentMethodOptionsParam21CaptureMethod manual = PaymentMethodOptionsParam21CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam21CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam21CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam21CaptureMethod($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam21SetupFutureUsage {const PaymentMethodOptionsParam21SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam21SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam21SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam21SetupFutureUsage none = PaymentMethodOptionsParam21SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam21SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam21SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam21SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam21 {const PaymentMethodOptionsParam21({this.captureMethod, this.setupFutureUsage, });

factory PaymentMethodOptionsParam21.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam21(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam21CaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam21SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam21CaptureMethod? captureMethod;

final PaymentMethodOptionsParam21SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam21 copyWith({PaymentMethodOptionsParam21CaptureMethod Function()? captureMethod, PaymentMethodOptionsParam21SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam21(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam21 &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam21(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
