// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam66AmountIncludesIof {const PaymentMethodOptionsParam66AmountIncludesIof._(this.value);

factory PaymentMethodOptionsParam66AmountIncludesIof.fromJson(String json) { return switch (json) {
  'always' => always,
  'never' => never,
  _ => PaymentMethodOptionsParam66AmountIncludesIof._(json),
}; }

static const PaymentMethodOptionsParam66AmountIncludesIof always = PaymentMethodOptionsParam66AmountIncludesIof._('always');

static const PaymentMethodOptionsParam66AmountIncludesIof never = PaymentMethodOptionsParam66AmountIncludesIof._('never');

static const List<PaymentMethodOptionsParam66AmountIncludesIof> values = [always, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam66AmountIncludesIof && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam66AmountIncludesIof($value)'; } 
 }
final class PaymentMethodOptionsParam66SetupFutureUsage {const PaymentMethodOptionsParam66SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam66SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam66SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam66SetupFutureUsage none = PaymentMethodOptionsParam66SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam66SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam66SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam66SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam66 {const PaymentMethodOptionsParam66({this.amountIncludesIof, this.expiresAfterSeconds, this.expiresAt, this.setupFutureUsage, });

factory PaymentMethodOptionsParam66.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam66(
  amountIncludesIof: json['amount_includes_iof'] != null ? PaymentMethodOptionsParam66AmountIncludesIof.fromJson(json['amount_includes_iof'] as String) : null,
  expiresAfterSeconds: json['expires_after_seconds'] != null ? (json['expires_after_seconds'] as num).toInt() : null,
  expiresAt: json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam66SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam66AmountIncludesIof? amountIncludesIof;

final int? expiresAfterSeconds;

final int? expiresAt;

final PaymentMethodOptionsParam66SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (amountIncludesIof != null) 'amount_includes_iof': amountIncludesIof?.toJson(),
  'expires_after_seconds': ?expiresAfterSeconds,
  'expires_at': ?expiresAt,
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsParam66 copyWith({PaymentMethodOptionsParam66AmountIncludesIof Function()? amountIncludesIof, int Function()? expiresAfterSeconds, int Function()? expiresAt, PaymentMethodOptionsParam66SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam66(
  amountIncludesIof: amountIncludesIof != null ? amountIncludesIof() : this.amountIncludesIof,
  expiresAfterSeconds: expiresAfterSeconds != null ? expiresAfterSeconds() : this.expiresAfterSeconds,
  expiresAt: expiresAt != null ? expiresAt() : this.expiresAt,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam66 &&
          amountIncludesIof == other.amountIncludesIof &&
          expiresAfterSeconds == other.expiresAfterSeconds &&
          expiresAt == other.expiresAt &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(amountIncludesIof, expiresAfterSeconds, expiresAt, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam66(amountIncludesIof: $amountIncludesIof, expiresAfterSeconds: $expiresAfterSeconds, expiresAt: $expiresAt, setupFutureUsage: $setupFutureUsage)'; } 
 }
