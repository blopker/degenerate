// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam90CaptureMethod {const PaymentMethodOptionsParam90CaptureMethod._(this.value);

factory PaymentMethodOptionsParam90CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam90CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam90CaptureMethod $empty = PaymentMethodOptionsParam90CaptureMethod._('');

static const PaymentMethodOptionsParam90CaptureMethod manual = PaymentMethodOptionsParam90CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam90CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam90CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam90CaptureMethod($value)'; } 
 }
final class PaymentMethodOptionsParam90SetupFutureUsage {const PaymentMethodOptionsParam90SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam90SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  _ => PaymentMethodOptionsParam90SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam90SetupFutureUsage $empty = PaymentMethodOptionsParam90SetupFutureUsage._('');

static const PaymentMethodOptionsParam90SetupFutureUsage none = PaymentMethodOptionsParam90SetupFutureUsage._('none');

static const PaymentMethodOptionsParam90SetupFutureUsage offSession = PaymentMethodOptionsParam90SetupFutureUsage._('off_session');

static const List<PaymentMethodOptionsParam90SetupFutureUsage> values = [$empty, none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam90SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam90SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam90 {const PaymentMethodOptionsParam90({this.captureMethod, this.setupFutureUsage, });

factory PaymentMethodOptionsParam90.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam90(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam90CaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam90SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam90CaptureMethod? captureMethod;

final PaymentMethodOptionsParam90SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam90 copyWith({PaymentMethodOptionsParam90CaptureMethod Function()? captureMethod, PaymentMethodOptionsParam90SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam90(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam90 &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam90(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
