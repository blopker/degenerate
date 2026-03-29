// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam24SetupFutureUsage {const PaymentMethodOptionsParam24SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam24SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam24SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam24SetupFutureUsage none = PaymentMethodOptionsParam24SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam24SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam24SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam24SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam24 {const PaymentMethodOptionsParam24({this.expiresAfterDays, this.setupFutureUsage, });

factory PaymentMethodOptionsParam24.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam24(
  expiresAfterDays: json['expires_after_days'] != null ? (json['expires_after_days'] as num).toInt() : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam24SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final int? expiresAfterDays;

final PaymentMethodOptionsParam24SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  'expires_after_days': ?expiresAfterDays,
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expires_after_days', 'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam24 copyWith({int Function()? expiresAfterDays, PaymentMethodOptionsParam24SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam24(
  expiresAfterDays: expiresAfterDays != null ? expiresAfterDays() : this.expiresAfterDays,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam24 &&
          expiresAfterDays == other.expiresAfterDays &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(expiresAfterDays, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam24(expiresAfterDays: $expiresAfterDays, setupFutureUsage: $setupFutureUsage)'; } 
 }
