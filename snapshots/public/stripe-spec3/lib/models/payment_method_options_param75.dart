// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam75CaptureMethod {const PaymentMethodOptionsParam75CaptureMethod._(this.value);

factory PaymentMethodOptionsParam75CaptureMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'manual' => manual,
  _ => PaymentMethodOptionsParam75CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam75CaptureMethod $empty = PaymentMethodOptionsParam75CaptureMethod._('');

static const PaymentMethodOptionsParam75CaptureMethod manual = PaymentMethodOptionsParam75CaptureMethod._('manual');

static const List<PaymentMethodOptionsParam75CaptureMethod> values = [$empty, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam75CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam75CaptureMethod($value)'; } 
 }
final class PaymentMethodOptionsParam75SetupFutureUsage {const PaymentMethodOptionsParam75SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam75SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam75SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam75SetupFutureUsage none = PaymentMethodOptionsParam75SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam75SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam75SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam75SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam75 {const PaymentMethodOptionsParam75({this.captureMethod, this.preferredLocale, this.setupFutureUsage, });

factory PaymentMethodOptionsParam75.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam75(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam75CaptureMethod.fromJson(json['capture_method'] as String) : null,
  preferredLocale: json['preferred_locale'] as String?,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam75SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam75CaptureMethod? captureMethod;

final String? preferredLocale;

final PaymentMethodOptionsParam75SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  'preferred_locale': ?preferredLocale,
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'preferred_locale', 'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam75 copyWith({PaymentMethodOptionsParam75CaptureMethod Function()? captureMethod, String Function()? preferredLocale, PaymentMethodOptionsParam75SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam75(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  preferredLocale: preferredLocale != null ? preferredLocale() : this.preferredLocale,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam75 &&
          captureMethod == other.captureMethod &&
          preferredLocale == other.preferredLocale &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(captureMethod, preferredLocale, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam75(captureMethod: $captureMethod, preferredLocale: $preferredLocale, setupFutureUsage: $setupFutureUsage)'; } 
 }
