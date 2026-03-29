// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam79CaptureMethod {const PaymentMethodOptionsParam79CaptureMethod._(this.value);

factory PaymentMethodOptionsParam79CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam79CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam79CaptureMethod $empty = PaymentMethodOptionsParam79CaptureMethod._('');

static const PaymentMethodOptionsParam79CaptureMethod manual = PaymentMethodOptionsParam79CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam79CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam79CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam79CaptureMethod($value)'; } 
 }
final class PaymentMethodOptionsParam79SetupFutureUsage {const PaymentMethodOptionsParam79SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam79SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  _ => PaymentMethodOptionsParam79SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam79SetupFutureUsage $empty = PaymentMethodOptionsParam79SetupFutureUsage._('');

static const PaymentMethodOptionsParam79SetupFutureUsage none = PaymentMethodOptionsParam79SetupFutureUsage._('none');

static const PaymentMethodOptionsParam79SetupFutureUsage offSession = PaymentMethodOptionsParam79SetupFutureUsage._('off_session');

static const List<PaymentMethodOptionsParam79SetupFutureUsage> values = [$empty, none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam79SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam79SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam79 {const PaymentMethodOptionsParam79({this.captureMethod, this.setupFutureUsage, });

factory PaymentMethodOptionsParam79.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam79(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam79CaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam79SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam79CaptureMethod? captureMethod;

final PaymentMethodOptionsParam79SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsParam79 copyWith({PaymentMethodOptionsParam79CaptureMethod Function()? captureMethod, PaymentMethodOptionsParam79SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam79(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam79 &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam79(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
