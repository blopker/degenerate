// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam76CaptureMethod {const PaymentMethodOptionsParam76CaptureMethod._(this.value);

factory PaymentMethodOptionsParam76CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam76CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam76CaptureMethod $empty = PaymentMethodOptionsParam76CaptureMethod._('');

static const PaymentMethodOptionsParam76CaptureMethod manual = PaymentMethodOptionsParam76CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam76CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam76CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam76CaptureMethod($value)'; } 
 }
final class PaymentMethodOptionsParam76SetupFutureUsage {const PaymentMethodOptionsParam76SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam76SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam76SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam76SetupFutureUsage none = PaymentMethodOptionsParam76SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam76SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam76SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam76SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam76 {const PaymentMethodOptionsParam76({this.captureMethod, this.reference, this.setupFutureUsage, });

factory PaymentMethodOptionsParam76.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam76(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam76CaptureMethod.fromJson(json['capture_method'] as String) : null,
  reference: json['reference'] as String?,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam76SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam76CaptureMethod? captureMethod;

final String? reference;

final PaymentMethodOptionsParam76SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  'reference': ?reference,
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsParam76 copyWith({PaymentMethodOptionsParam76CaptureMethod Function()? captureMethod, String Function()? reference, PaymentMethodOptionsParam76SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam76(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  reference: reference != null ? reference() : this.reference,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam76 &&
          captureMethod == other.captureMethod &&
          reference == other.reference &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, reference, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam76(captureMethod: $captureMethod, reference: $reference, setupFutureUsage: $setupFutureUsage)'; } 
 }
