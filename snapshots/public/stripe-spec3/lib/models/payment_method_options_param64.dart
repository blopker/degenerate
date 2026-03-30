// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam64SetupFutureUsage {const PaymentMethodOptionsParam64SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam64SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam64SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam64SetupFutureUsage none = PaymentMethodOptionsParam64SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam64SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam64SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam64SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam64 {const PaymentMethodOptionsParam64({this.setupFutureUsage});

factory PaymentMethodOptionsParam64.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam64(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam64SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam64SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam64 copyWith({PaymentMethodOptionsParam64SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam64(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam64 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam64(setupFutureUsage: $setupFutureUsage)'; } 
 }
