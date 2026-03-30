// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam45SetupFutureUsage {const PaymentMethodOptionsParam45SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam45SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentMethodOptionsParam45SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam45SetupFutureUsage $empty = PaymentMethodOptionsParam45SetupFutureUsage._('');

static const PaymentMethodOptionsParam45SetupFutureUsage none = PaymentMethodOptionsParam45SetupFutureUsage._('none');

static const PaymentMethodOptionsParam45SetupFutureUsage offSession = PaymentMethodOptionsParam45SetupFutureUsage._('off_session');

static const PaymentMethodOptionsParam45SetupFutureUsage onSession = PaymentMethodOptionsParam45SetupFutureUsage._('on_session');

static const List<PaymentMethodOptionsParam45SetupFutureUsage> values = [$empty, none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam45SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam45SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam45 {const PaymentMethodOptionsParam45({this.expiresAfterDays, this.setupFutureUsage, });

factory PaymentMethodOptionsParam45.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam45(
  expiresAfterDays: json['expires_after_days'] != null ? (json['expires_after_days'] as num).toInt() : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam45SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final int? expiresAfterDays;

final PaymentMethodOptionsParam45SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  'expires_after_days': ?expiresAfterDays,
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expires_after_days', 'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam45 copyWith({int Function()? expiresAfterDays, PaymentMethodOptionsParam45SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam45(
  expiresAfterDays: expiresAfterDays != null ? expiresAfterDays() : this.expiresAfterDays,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam45 &&
          expiresAfterDays == other.expiresAfterDays &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(expiresAfterDays, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam45(expiresAfterDays: $expiresAfterDays, setupFutureUsage: $setupFutureUsage)'; } 
 }
