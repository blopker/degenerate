// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam58CaptureMethod {const PaymentMethodOptionsParam58CaptureMethod._(this.value);

factory PaymentMethodOptionsParam58CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam58CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam58CaptureMethod $empty = PaymentMethodOptionsParam58CaptureMethod._('');

static const PaymentMethodOptionsParam58CaptureMethod manual = PaymentMethodOptionsParam58CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam58CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam58CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam58CaptureMethod($value)'; } 
 }
final class PaymentMethodOptionsParam58SetupFutureUsage {const PaymentMethodOptionsParam58SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam58SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam58SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam58SetupFutureUsage none = PaymentMethodOptionsParam58SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam58SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam58SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam58SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam58 {const PaymentMethodOptionsParam58({this.captureMethod, this.setupFutureUsage, });

factory PaymentMethodOptionsParam58.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam58(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam58CaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam58SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam58CaptureMethod? captureMethod;

final PaymentMethodOptionsParam58SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam58 copyWith({PaymentMethodOptionsParam58CaptureMethod Function()? captureMethod, PaymentMethodOptionsParam58SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam58(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam58 &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam58(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
