// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam101SetupFutureUsage {const PaymentMethodOptionsParam101SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam101SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam101SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam101SetupFutureUsage none = PaymentMethodOptionsParam101SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam101SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam101SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam101SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam101 {const PaymentMethodOptionsParam101({this.setupFutureUsage});

factory PaymentMethodOptionsParam101.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam101(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam101SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam101SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam101 copyWith({PaymentMethodOptionsParam101SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam101(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam101 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam101(setupFutureUsage: $setupFutureUsage)'; } 
 }
