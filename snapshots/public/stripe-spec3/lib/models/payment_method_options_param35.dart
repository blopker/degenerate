// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam35SetupFutureUsage {const PaymentMethodOptionsParam35SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam35SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam35SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam35SetupFutureUsage none = PaymentMethodOptionsParam35SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam35SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam35SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam35SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam35 {const PaymentMethodOptionsParam35({this.setupFutureUsage});

factory PaymentMethodOptionsParam35.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam35(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam35SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam35SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam35 copyWith({PaymentMethodOptionsParam35SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam35(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam35 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam35(setupFutureUsage: $setupFutureUsage)'; } 
 }
