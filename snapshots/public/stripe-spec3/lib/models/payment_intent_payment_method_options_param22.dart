// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentIntentPaymentMethodOptionsParam22CaptureMethod {const PaymentIntentPaymentMethodOptionsParam22CaptureMethod._(this.value);

factory PaymentIntentPaymentMethodOptionsParam22CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentIntentPaymentMethodOptionsParam22CaptureMethod._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam22CaptureMethod $empty = PaymentIntentPaymentMethodOptionsParam22CaptureMethod._('');

static const PaymentIntentPaymentMethodOptionsParam22CaptureMethod manual = PaymentIntentPaymentMethodOptionsParam22CaptureMethod._('manual');

static const List<PaymentIntentPaymentMethodOptionsParam22CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam22CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam22CaptureMethod($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage {const PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  _ => PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage $empty = PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage._('');

static const PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage none = PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage._('none');

static const PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage offSession = PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage._('off_session');

static const List<PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage> values = [$empty, none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam22 {const PaymentIntentPaymentMethodOptionsParam22({this.captureMethod, this.setupFutureUsage, });

factory PaymentIntentPaymentMethodOptionsParam22.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam22(
  captureMethod: json['capture_method'] != null ? PaymentIntentPaymentMethodOptionsParam22CaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsParam22CaptureMethod? captureMethod;

final PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentIntentPaymentMethodOptionsParam22 copyWith({PaymentIntentPaymentMethodOptionsParam22CaptureMethod Function()? captureMethod, PaymentIntentPaymentMethodOptionsParam22SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentIntentPaymentMethodOptionsParam22(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam22 &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam22(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
