// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam93CaptureMethod {const PaymentMethodOptionsParam93CaptureMethod._(this.value);

factory PaymentMethodOptionsParam93CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam93CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam93CaptureMethod $empty = PaymentMethodOptionsParam93CaptureMethod._('');

static const PaymentMethodOptionsParam93CaptureMethod manual = PaymentMethodOptionsParam93CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam93CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam93CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam93CaptureMethod($value)'; } 
 }
final class PaymentMethodOptionsParam93SetupFutureUsage {const PaymentMethodOptionsParam93SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam93SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  _ => PaymentMethodOptionsParam93SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam93SetupFutureUsage $empty = PaymentMethodOptionsParam93SetupFutureUsage._('');

static const PaymentMethodOptionsParam93SetupFutureUsage none = PaymentMethodOptionsParam93SetupFutureUsage._('none');

static const PaymentMethodOptionsParam93SetupFutureUsage offSession = PaymentMethodOptionsParam93SetupFutureUsage._('off_session');

static const List<PaymentMethodOptionsParam93SetupFutureUsage> values = [$empty, none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam93SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam93SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam93 {const PaymentMethodOptionsParam93({this.captureMethod, this.setupFutureUsage, });

factory PaymentMethodOptionsParam93.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam93(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam93CaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam93SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam93CaptureMethod? captureMethod;

final PaymentMethodOptionsParam93SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsParam93 copyWith({PaymentMethodOptionsParam93CaptureMethod Function()? captureMethod, PaymentMethodOptionsParam93SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam93(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam93 &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam93(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
