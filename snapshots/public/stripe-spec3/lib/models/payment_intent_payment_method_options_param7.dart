// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentIntentPaymentMethodOptionsParam7SetupFutureUsage {const PaymentIntentPaymentMethodOptionsParam7SetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParam7SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentIntentPaymentMethodOptionsParam7SetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam7SetupFutureUsage none = PaymentIntentPaymentMethodOptionsParam7SetupFutureUsage._('none');

static const List<PaymentIntentPaymentMethodOptionsParam7SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam7SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam7SetupFutureUsage($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam7 {const PaymentIntentPaymentMethodOptionsParam7({this.setupFutureUsage});

factory PaymentIntentPaymentMethodOptionsParam7.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam7(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParam7SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsParam7SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentIntentPaymentMethodOptionsParam7 copyWith({PaymentIntentPaymentMethodOptionsParam7SetupFutureUsage Function()? setupFutureUsage}) { return PaymentIntentPaymentMethodOptionsParam7(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam7 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam7(setupFutureUsage: $setupFutureUsage)'; } 
 }
