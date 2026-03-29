// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam31CaptureMethod {const PaymentMethodOptionsParam31CaptureMethod._(this.value);

factory PaymentMethodOptionsParam31CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam31CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam31CaptureMethod $empty = PaymentMethodOptionsParam31CaptureMethod._('');

static const PaymentMethodOptionsParam31CaptureMethod manual = PaymentMethodOptionsParam31CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam31CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam31CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam31CaptureMethod($value)'; } 
 }
final class PaymentMethodOptionsParam31SetupFutureUsage {const PaymentMethodOptionsParam31SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam31SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  _ => PaymentMethodOptionsParam31SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam31SetupFutureUsage $empty = PaymentMethodOptionsParam31SetupFutureUsage._('');

static const PaymentMethodOptionsParam31SetupFutureUsage none = PaymentMethodOptionsParam31SetupFutureUsage._('none');

static const PaymentMethodOptionsParam31SetupFutureUsage offSession = PaymentMethodOptionsParam31SetupFutureUsage._('off_session');

static const List<PaymentMethodOptionsParam31SetupFutureUsage> values = [$empty, none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam31SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam31SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam31 {const PaymentMethodOptionsParam31({this.captureMethod, this.setupFutureUsage, });

factory PaymentMethodOptionsParam31.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam31(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam31CaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam31SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam31CaptureMethod? captureMethod;

final PaymentMethodOptionsParam31SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsParam31 copyWith({PaymentMethodOptionsParam31CaptureMethod Function()? captureMethod, PaymentMethodOptionsParam31SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam31(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam31 &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam31(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
