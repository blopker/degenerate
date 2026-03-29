// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam16CaptureMethod {const PaymentMethodOptionsParam16CaptureMethod._(this.value);

factory PaymentMethodOptionsParam16CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam16CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam16CaptureMethod $empty = PaymentMethodOptionsParam16CaptureMethod._('');

static const PaymentMethodOptionsParam16CaptureMethod manual = PaymentMethodOptionsParam16CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam16CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam16CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam16CaptureMethod($value)'; } 
 }
final class PaymentMethodOptionsParam16SetupFutureUsage {const PaymentMethodOptionsParam16SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam16SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  _ => PaymentMethodOptionsParam16SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam16SetupFutureUsage $empty = PaymentMethodOptionsParam16SetupFutureUsage._('');

static const PaymentMethodOptionsParam16SetupFutureUsage none = PaymentMethodOptionsParam16SetupFutureUsage._('none');

static const PaymentMethodOptionsParam16SetupFutureUsage offSession = PaymentMethodOptionsParam16SetupFutureUsage._('off_session');

static const List<PaymentMethodOptionsParam16SetupFutureUsage> values = [$empty, none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam16SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam16SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam16 {const PaymentMethodOptionsParam16({this.captureMethod, this.setupFutureUsage, });

factory PaymentMethodOptionsParam16.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam16(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam16CaptureMethod.fromJson(json['capture_method'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam16SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam16CaptureMethod? captureMethod;

final PaymentMethodOptionsParam16SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsParam16 copyWith({PaymentMethodOptionsParam16CaptureMethod Function()? captureMethod, PaymentMethodOptionsParam16SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam16(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam16 &&
          captureMethod == other.captureMethod &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam16(captureMethod: $captureMethod, setupFutureUsage: $setupFutureUsage)'; } 
 }
