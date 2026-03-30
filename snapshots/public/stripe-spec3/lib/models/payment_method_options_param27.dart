// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam27SetupFutureUsage {const PaymentMethodOptionsParam27SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam27SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam27SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam27SetupFutureUsage none = PaymentMethodOptionsParam27SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam27SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam27SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam27SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam27 {const PaymentMethodOptionsParam27({this.setupFutureUsage});

factory PaymentMethodOptionsParam27.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam27(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam27SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam27SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam27 copyWith({PaymentMethodOptionsParam27SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam27(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam27 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam27(setupFutureUsage: $setupFutureUsage)'; } 
 }
