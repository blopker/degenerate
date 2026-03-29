// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentIntentPaymentMethodOptionsParam5CaptureMethod {const PaymentIntentPaymentMethodOptionsParam5CaptureMethod._(this.value);

factory PaymentIntentPaymentMethodOptionsParam5CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentIntentPaymentMethodOptionsParam5CaptureMethod._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam5CaptureMethod $empty = PaymentIntentPaymentMethodOptionsParam5CaptureMethod._('');

static const PaymentIntentPaymentMethodOptionsParam5CaptureMethod manual = PaymentIntentPaymentMethodOptionsParam5CaptureMethod._('manual');

static const List<PaymentIntentPaymentMethodOptionsParam5CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam5CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam5CaptureMethod($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage {const PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage $empty = PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage._('');

static const PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage none = PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage._('none');

static const PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage offSession = PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage._('off_session');

static const PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage onSession = PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage._('on_session');

static const List<PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage> values = [$empty, none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam5 {const PaymentIntentPaymentMethodOptionsParam5({this.captureMethod, this.setupFutureUsage, });

factory PaymentIntentPaymentMethodOptionsParam5.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam5(
  captureMethod: json['capture_method'] != null ? PaymentIntentPaymentMethodOptionsParam5CaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsParam5CaptureMethod? captureMethod;

final PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentIntentPaymentMethodOptionsParam5 copyWith({PaymentIntentPaymentMethodOptionsParam5CaptureMethod Function()? captureMethod, PaymentIntentPaymentMethodOptionsParam5SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentIntentPaymentMethodOptionsParam5(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam5 &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam5(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
