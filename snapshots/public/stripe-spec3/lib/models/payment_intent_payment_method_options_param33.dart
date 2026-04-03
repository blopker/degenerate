// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam33CaptureMethod {const PaymentIntentPaymentMethodOptionsParam33CaptureMethod._(this.value);

factory PaymentIntentPaymentMethodOptionsParam33CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentIntentPaymentMethodOptionsParam33CaptureMethod._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam33CaptureMethod $empty = PaymentIntentPaymentMethodOptionsParam33CaptureMethod._('');

static const PaymentIntentPaymentMethodOptionsParam33CaptureMethod manual = PaymentIntentPaymentMethodOptionsParam33CaptureMethod._('manual');

static const List<PaymentIntentPaymentMethodOptionsParam33CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam33CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam33CaptureMethod($value)'; } 
 }
@immutable final class PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage {const PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage $empty = PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage._('');

static const PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage none = PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage._('none');

static const PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage offSession = PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage._('off_session');

static const PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage onSession = PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage._('on_session');

static const List<PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage> values = [$empty, none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentIntentPaymentMethodOptionsParam33 {const PaymentIntentPaymentMethodOptionsParam33({this.captureMethod, this.setupFutureUsage, });

factory PaymentIntentPaymentMethodOptionsParam33.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam33(
  captureMethod: json['capture_method'] != null ? PaymentIntentPaymentMethodOptionsParam33CaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsParam33CaptureMethod? captureMethod;

final PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'setup_future_usage'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam33 copyWith({PaymentIntentPaymentMethodOptionsParam33CaptureMethod Function()? captureMethod, PaymentIntentPaymentMethodOptionsParam33SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentIntentPaymentMethodOptionsParam33(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam33 &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam33(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
